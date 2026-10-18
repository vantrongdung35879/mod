.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;
    }
.end annotation


# static fields
.field private static final SHARE_PARAM:Ljava/lang/String; = "SharingParam"


# instance fields
.field private final dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

.field private dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

.field private mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

.field private mSendButton:Landroid/widget/TextView;

.field sendButtonPress:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetdialogFragmentI(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogParams(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/vk/VkShareDialogParam;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetIsLoading(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setIsLoading(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->sendButtonPress:Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    return-void
.end method

.method private loadUserInfo(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->loadUserInfo(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method private setIsLoading(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 167
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupAttachmentPreview(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V
    .locals 2

    .line 153
    iget-object p1, p1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->shareImage:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v0}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v0}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/ImageLoader;->load(Landroid/net/Uri;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->setCornerRadius(F)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->into(Landroid/widget/ImageView;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 161
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setupTextContent(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V
    .locals 5

    .line 110
    iget-object p1, p1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->shareContent:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v0}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->getText()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {v1}, Lcom/beetalk/sdk/vk/VkShareDialogParam;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    return-void

    .line 118
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-static {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->highlight(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 126
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 131
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareCancel()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;

    move-result-object p1

    .line 73
    iget-object p2, p1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->closeButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p2, p1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->logo:Landroid/widget/ImageView;

    sget v0, Lcom/garena/msdk/R$drawable;->vk_logo:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object p2, p1, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->sendButton:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/TextView;

    .line 87
    invoke-static {}, Lcom/beetalk/sdk/plugin/impl/vk/VkShareHelperKt;->getVkShareResourceColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/TextView;

    const-string v0, "Create"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->sendButtonPress:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 95
    const-string p2, "SharingParam"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/beetalk/sdk/vk/VkShareDialogParam;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setupAttachmentPreview(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadUserInfo(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setupTextContent(Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;)V

    .line 102
    invoke-virtual {p1}, Lcom/garena/msdk/databinding/MsdkVkShareDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    const-string v0, "SharingParam"

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setDialogParams(Lcom/beetalk/sdk/vk/VkShareDialogParam;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogParams:Lcom/beetalk/sdk/vk/VkShareDialogParam;

    return-void
.end method

.method public setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-void
.end method
