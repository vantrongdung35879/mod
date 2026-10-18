.class public final Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand;
.super Lcom/vk/api/sdk/internal/ApiCommand;
.source "VKUserGetCommand.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand$ResponseApiParser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/sdk/internal/ApiCommand<",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand;",
        "Lcom/vk/api/sdk/internal/ApiCommand;",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;",
        "()V",
        "onExecute",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/vk/api/sdk/internal/ApiCommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected onExecute(Lcom/vk/api/sdk/VKApiManager;)Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/vk/api/sdk/VKMethodCall$Builder;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;-><init>()V

    .line 36
    const-string/jumbo v1, "users.get"

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->method(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/vk/api/sdk/VK;->getUserId()Lcom/vk/dto/common/id/UserId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "user_ids"

    invoke-virtual {v0, v2, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/Object;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 38
    const-string v1, "fields"

    const-string v2, "photo_100,screen_name,first_name,last_name"

    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/VKMethodCall$Builder;->args(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiManager;->getConfig()Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/VKApiConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/VKMethodCall$Builder;->version(Ljava/lang/String;)Lcom/vk/api/sdk/VKMethodCall$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/vk/api/sdk/VKMethodCall$Builder;->build()Lcom/vk/api/sdk/VKMethodCall;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand$ResponseApiParser;

    invoke-direct {v1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand$ResponseApiParser;-><init>()V

    check-cast v1, Lcom/vk/api/sdk/VKApiJSONResponseParser;

    invoke-virtual {p1, v0, v1}, Lcom/vk/api/sdk/VKApiManager;->execute(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/VKApiJSONResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    return-object p1
.end method

.method public bridge synthetic onExecute(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/api/VKUserGetCommand;->onExecute(Lcom/vk/api/sdk/VKApiManager;)Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    move-result-object p1

    return-object p1
.end method
