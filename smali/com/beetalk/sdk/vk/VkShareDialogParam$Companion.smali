.class public final Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;
.super Ljava/lang/Object;
.source "VkShareDialogParam.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/vk/VkShareDialogParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;",
        "",
        "()V",
        "create",
        "Lcom/facebook/bolts/Task;",
        "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
        "item",
        "Lcom/beetalk/sdk/vk/VKPostItem;",
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


# direct methods
.method public static synthetic $r8$lambda$II9WNrkl9zmtgvZADZ8TOjwfWzo(Lcom/beetalk/sdk/vk/VKPostItem;Lcom/facebook/bolts/Task;Lcom/facebook/bolts/Task;)Lcom/beetalk/sdk/vk/VkShareDialogParam;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;->create$lambda$1(Lcom/beetalk/sdk/vk/VKPostItem;Lcom/facebook/bolts/Task;Lcom/facebook/bolts/Task;)Lcom/beetalk/sdk/vk/VkShareDialogParam;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$1(Lcom/beetalk/sdk/vk/VKPostItem;Lcom/facebook/bolts/Task;Lcom/facebook/bolts/Task;)Lcom/beetalk/sdk/vk/VkShareDialogParam;
    .locals 2

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p2, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    .line 33
    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->message:Ljava/lang/String;

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->link:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 32
    :goto_0
    invoke-direct {p2, v0, p0, p1, v1}, Lcom/beetalk/sdk/vk/VkShareDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object p2
.end method


# virtual methods
.method public final create(Lcom/beetalk/sdk/vk/VKPostItem;)Lcom/facebook/bolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/vk/VKPostItem;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p1, Lcom/beetalk/sdk/vk/VKPostItem;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v1, "vk_share_image"

    .line 23
    invoke-static {v0, v1}, Lcom/garena/android/share/util/ShareUtils;->getImageUriTask(Lcom/garena/android/share/model/ShareImageContent;Ljava/lang/String;)Lcom/facebook/bolts/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sget-object v1, Lcom/facebook/bolts/Task;->Companion:Lcom/facebook/bolts/Task$Companion;

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 29
    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task$Companion;->whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/vk/VKPostItem;Lcom/facebook/bolts/Task;)V

    invoke-virtual {v1, v2}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
