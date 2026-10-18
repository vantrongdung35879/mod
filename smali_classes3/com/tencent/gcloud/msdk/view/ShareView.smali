.class public Lcom/tencent/gcloud/msdk/view/ShareView;
.super Ljava/lang/Object;
.source "ShareView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;
    }
.end annotation


# instance fields
.field private final SHARE_ITEM_WIDTH_DEFAULT:I

.field private isDismissing:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mShareListener:Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

.field private mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private shareChannelItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->isDismissing:Z

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->SHARE_ITEM_WIDTH_DEFAULT:I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShareView Construct:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    .line 46
    const-string v1, "msdk_webview_share_container"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 48
    const-string p1, "can not found msdk_webview_share_container"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    .line 52
    const-string v1, "msdk_webview_share_dlg"

    invoke-static {p1, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 54
    const-string p1, "can not found msdk_webview_share_dlg"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 58
    const-string v2, "share_cancel"

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 60
    const-string p1, "can not found share_cancel"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_4

    .line 65
    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    :cond_3
    new-instance v2, Lcom/tencent/gcloud/msdk/view/ShareView$1;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/view/ShareView$1;-><init>(Lcom/tencent/gcloud/msdk/view/ShareView;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_4
    const-string v2, "share_recyclerView"

    invoke-static {p1, v2}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_5

    .line 78
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 81
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->getShareListData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->shareChannelItemList:Ljava/util/List;

    goto :goto_0

    .line 84
    :cond_5
    const-string p1, "can not found share_recyclerView"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/view/ShareView;)Landroid/view/ViewGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/view/ShareView;)Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareListener:Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/view/ShareView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->shareChannelItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/gcloud/msdk/view/ShareView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->isDismissing:Z

    return p1
.end method

.method private resetAdapter(I)V
    .locals 2

    .line 97
    new-instance v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;-><init>(Landroid/content/Context;)V

    if-lez p1, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->setItemWidth(I)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->shareChannelItemList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->setShareData(Ljava/util/List;)V

    .line 102
    new-instance p1, Lcom/tencent/gcloud/msdk/view/ShareView$2;

    invoke-direct {p1, p0}, Lcom/tencent/gcloud/msdk/view/ShareView$2;-><init>(Lcom/tencent/gcloud/msdk/view/ShareView;)V

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->setOnItemClickListener(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 149
    const-string p1, "Should init view first!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->isDismissing:Z

    if-eqz v0, :cond_1

    .line 153
    const-string p1, "already dismiss"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    const-string v1, "msdk_webview_anim_share_slide_out"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ResourceUtil;->getAnimId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    const-string v0, "loadAnimation msdk_webview_anim_share_slide_out error!"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 164
    const-string v1, "dismiss with anim"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 165
    new-instance v1, Lcom/tencent/gcloud/msdk/view/ShareView$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/gcloud/msdk/view/ShareView$3;-><init>(Lcom/tencent/gcloud/msdk/view/ShareView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 196
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->isDismissing:Z

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareListener:Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-le p1, v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->shareChannelItemList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;

    .line 207
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareListener:Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->channel:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;->onShare(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    .line 210
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->isDismissing:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    const-string p1, "share view is not shown, ignore."

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 125
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/view/ShareView;->resetAdapter(I)V

    return-void

    .line 117
    :cond_2
    :goto_0
    const-string p1, "Should init view first!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setShareListener(Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mShareListener:Lcom/tencent/gcloud/msdk/view/ShareView$ShareListener;

    return-void
.end method

.method public show(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 129
    const-string p1, "Should init view first!"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 133
    const-string p1, "share view need parent view\uff0cbut get null"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    const-string p1, "share view is showing, ignore"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 140
    invoke-direct {p0, v0}, Lcom/tencent/gcloud/msdk/view/ShareView;->resetAdapter(I)V

    .line 141
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ShareView;->mContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
