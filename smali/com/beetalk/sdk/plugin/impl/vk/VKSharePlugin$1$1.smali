.class Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;
.super Ljava/lang/Object;
.source "VKSharePlugin.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog$VKShareDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVkShareCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "vk share canceled"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->-$$Nest$monResultError(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method public onVkShareComplete(I)V
    .locals 3

    const/4 p1, 0x0

    .line 42
    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "vk share complete"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    invoke-virtual {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 45
    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 46
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 47
    const-string p1, "Success"

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v2, v2, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    .line 49
    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onVkShareError(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "vk share failed: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->-$$Nest$monResultError(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->-$$Nest$monResultError(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    return-void
.end method
