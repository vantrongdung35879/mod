.class Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;
.super Ljava/lang/Object;
.source "VKSharePlugin.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/vk/VkShareDialogParam;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->-$$Nest$monResultError(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setPostItem(Lcom/beetalk/sdk/vk/VkShareDialogParam;)V

    .line 40
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;)V

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    const/4 p1, 0x0

    .line 67
    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "launching vk share dialog"

    invoke-static {v1, p1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "VK_SHARE_DIALOG"

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
