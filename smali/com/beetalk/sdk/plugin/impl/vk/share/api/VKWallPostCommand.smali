.class public final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;
.super Lcom/vk/api/sdk/internal/ApiCommand;
.source "VKWallPostCommand.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand$ResponseApiParser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/sdk/internal/ApiCommand<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKWallPostCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKWallPostCommand.kt\ncom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011BC\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0014\u00a2\u0006\u0002\u0010\u0010R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;",
        "Lcom/vk/api/sdk/internal/ApiCommand;",
        "",
        "message",
        "",
        "attachments",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;",
        "link",
        "ownerId",
        "friendsOnly",
        "",
        "fromGroup",
        "(Ljava/lang/String;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;Ljava/lang/String;IZZ)V",
        "onExecute",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Integer;",
        "ResponseApiParser",
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
.field private final attachments:Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;

.field private final friendsOnly:Z

.field private final fromGroup:Z

.field private final link:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final ownerId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;Ljava/lang/String;IZZ)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/vk/api/sdk/internal/ApiCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->message:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->attachments:Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;

    .line 34
    iput-object p3, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->link:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->ownerId:I

    .line 36
    iput-boolean p5, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->friendsOnly:Z

    .line 37
    iput-boolean p6, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->fromGroup:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p7, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v3, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move p6, v2

    move p7, v4

    move p8, v3

    .line 31
    invoke-direct/range {p2 .. p8}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method protected onExecute(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Integer;
    .locals 11

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/vk/api/sdk/VKMethodCall$Builder;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;-><init>()V

    .line 42
    const-string/jumbo v1, "wall.post"

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->method(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 43
    const-string v1, "message"

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 44
    iget-boolean v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->friendsOnly:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "friends_only"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 45
    iget-boolean v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->fromGroup:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "from_group"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/VKApiConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->version(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 48
    iget v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->ownerId:I

    if-eqz v1, :cond_0

    .line 49
    const-string v2, "owner_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    .line 52
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->attachments:Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKMediaAttachments;->getAttachmentIds(Lcom/vk/api/sdk/VKApiManager;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_2
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->link:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 55
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    :cond_3
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attachments"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    .line 60
    invoke-virtual {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->build()Lcom/vk/api/sdk/VKMethodCall;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand$ResponseApiParser;

    invoke-direct {v1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand$ResponseApiParser;-><init>()V

    check-cast v1, Lcom/vk/api/sdk/VKApiJSONResponseParser;

    invoke-virtual {p1, v0, v1}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiJSONResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic onExecute(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKWallPostCommand;->onExecute(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
