.class public Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
.super Ljava/lang/Object;
.source "VKShareDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;
    }
.end annotation


# instance fields
.field attachmentText:Ljava/lang/CharSequence;

.field linkTitle:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

.field postItem:Lcom/beetalk/sdk/vk/VkShareDialogParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPostItem(Lcom/beetalk/sdk/vk/VkShareDialogParam;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->postItem:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    return-void
.end method

.method public setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-object p0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->setArguments(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
