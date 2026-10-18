.class public final Lcom/garena/msdk/databinding/TwComposerViewBinding;
.super Ljava/lang/Object;
.source "TwComposerViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final twAuthorAvatar:Landroid/widget/ImageView;

.field public final twCharCount:Landroid/widget/TextView;

.field public final twComposerClose:Landroid/widget/ImageButton;

.field public final twComposerHeader:Landroid/widget/RelativeLayout;

.field public final twComposerProfileDivider:Landroid/view/View;

.field public final twComposerScrollView:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

.field public final twComposerToolbar:Landroid/widget/LinearLayout;

.field public final twComposerToolbarDivider:Landroid/view/View;

.field public final twEditTweet:Landroid/widget/EditText;

.field public final twImageView:Landroid/widget/ImageView;

.field public final twPostTweet:Landroid/widget/Button;

.field public final twTwitterLogo:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 72
    iput-object p2, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twAuthorAvatar:Landroid/widget/ImageView;

    .line 73
    iput-object p3, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twCharCount:Landroid/widget/TextView;

    .line 74
    iput-object p4, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerClose:Landroid/widget/ImageButton;

    .line 75
    iput-object p5, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerHeader:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p6, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerProfileDivider:Landroid/view/View;

    .line 77
    iput-object p7, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerScrollView:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    .line 78
    iput-object p8, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerToolbar:Landroid/widget/LinearLayout;

    .line 79
    iput-object p9, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twComposerToolbarDivider:Landroid/view/View;

    .line 80
    iput-object p10, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twEditTweet:Landroid/widget/EditText;

    .line 81
    iput-object p11, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twImageView:Landroid/widget/ImageView;

    .line 82
    iput-object p12, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twPostTweet:Landroid/widget/Button;

    .line 83
    iput-object p13, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->twTwitterLogo:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/garena/msdk/databinding/TwComposerViewBinding;
    .locals 17

    move-object/from16 v0, p0

    .line 113
    sget v1, Lcom/garena/msdk/R$id;->tw__author_avatar:I

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 119
    sget v1, Lcom/garena/msdk/R$id;->tw__char_count:I

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 125
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_close:I

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_0

    .line 131
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_header:I

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 137
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_profile_divider:I

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 143
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_scroll_view:I

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    if-eqz v10, :cond_0

    .line 149
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_toolbar:I

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 155
    sget v1, Lcom/garena/msdk/R$id;->tw__composer_toolbar_divider:I

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 161
    sget v1, Lcom/garena/msdk/R$id;->tw__edit_tweet:I

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/EditText;

    if-eqz v13, :cond_0

    .line 167
    sget v1, Lcom/garena/msdk/R$id;->tw__image_view:I

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 173
    sget v1, Lcom/garena/msdk/R$id;->tw__post_tweet:I

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    .line 179
    sget v1, Lcom/garena/msdk/R$id;->tw__twitter_logo:I

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 185
    new-instance v1, Lcom/garena/msdk/databinding/TwComposerViewBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/garena/msdk/databinding/TwComposerViewBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    return-object v1

    .line 190
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/garena/msdk/databinding/TwComposerViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/garena/msdk/databinding/TwComposerViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/garena/msdk/databinding/TwComposerViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/garena/msdk/databinding/TwComposerViewBinding;
    .locals 2

    .line 100
    sget v0, Lcom/garena/msdk/R$layout;->tw__composer_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/garena/msdk/databinding/TwComposerViewBinding;->bind(Landroid/view/View;)Lcom/garena/msdk/databinding/TwComposerViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/garena/msdk/databinding/TwComposerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/garena/msdk/databinding/TwComposerViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
