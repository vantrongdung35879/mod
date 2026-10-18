.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

.field final synthetic this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$fgetmListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

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

    .line 175
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    if-eqz p1, :cond_5

    .line 187
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 193
    const-string p1, "post succeeds, but post id is null"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    if-eqz p1, :cond_2

    .line 195
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/garena/pay/android/GGErrorCode;)V

    :cond_2
    return-object v1

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$fgetmListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareComplete(I)V

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$fgetdialogFragmentI(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->dismissAllowingStateLoss()V

    .line 205
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;->this$1:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1, v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->-$$Nest$msetIsLoading(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V

    return-object v1
.end method
