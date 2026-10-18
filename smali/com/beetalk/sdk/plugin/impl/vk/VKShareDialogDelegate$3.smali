.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$msetIsLoading(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V

    .line 175
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$fgetdialogParams(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/vk/VkShareDialogParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->postToVKAsync()Lcom/facebook/bolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;)V

    sget-object v1, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    return-void
.end method
