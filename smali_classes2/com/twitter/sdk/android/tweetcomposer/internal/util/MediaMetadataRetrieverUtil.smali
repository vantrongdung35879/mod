.class public final Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil;
.super Ljava/lang/Object;
.source "MediaMetadataRetrieverUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil;",
        "",
        "()V",
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
.field public static final Companion:Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil;->Companion:Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final use(Landroid/media/MediaMetadataRetriever;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/MediaMetadataRetriever;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/media/MediaMetadataRetriever;",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil;->Companion:Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/MediaMetadataRetrieverUtil$Companion;->use(Landroid/media/MediaMetadataRetriever;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
