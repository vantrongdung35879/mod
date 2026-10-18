.class public Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;
.source "VKSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin<",
        "Lcom/beetalk/sdk/vk/VKPostItem;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$monResultError(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->onResultError(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;-><init>()V

    return-void
.end method

.method private onResultError(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    .line 76
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    .line 78
    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 79
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 80
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/beetalk/sdk/vk/VkShareDialogParam;->Companion:Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;

    invoke-virtual {v0, p2}, Lcom/beetalk/sdk/vk/VkShareDialogParam$Companion;->create(Lcom/beetalk/sdk/vk/VKPostItem;)Lcom/facebook/bolts/Task;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;)V

    sget-object p1, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p1}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    return-void
.end method

.method protected bridge synthetic executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 22
    check-cast p2, Lcom/beetalk/sdk/vk/VKPostItem;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    const-string/jumbo v0, "vk.share"

    return-object v0
.end method
