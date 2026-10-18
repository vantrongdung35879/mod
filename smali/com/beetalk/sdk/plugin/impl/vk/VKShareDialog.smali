.class public Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
.super Landroid/app/DialogFragment;
.source "VKShareDialog.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog$VKShareDialogListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 21
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 74
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 32
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCancel()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x166

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/exts/DisplayExtsKt;->getDp(Ljava/lang/Number;)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method setArguments(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->postItem:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setDialogParams(Lcom/beetalk/sdk/vk/VkShareDialogParam;)V

    .line 25
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)V

    return-object p0
.end method
