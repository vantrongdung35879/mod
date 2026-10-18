.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/GGPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadUserInfo(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
        "Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

.field final synthetic val$viewBinding:Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V
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

    .line 140
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->val$viewBinding:Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/ImageLoader;->load(Ljava/lang/String;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->setCircle()Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->val$viewBinding:Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;

    iget-object v1, v1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->into(Landroid/widget/ImageView;)V

    .line 145
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->val$viewBinding:Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;

    iget-object v0, v0, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->displayName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->val$viewBinding:Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;

    iget-object v0, v0, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 140
    check-cast p1, Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->onPluginResult(Lcom/beetalk/sdk/plugin/impl/vk/share/VKUser;)V

    return-void
.end method
