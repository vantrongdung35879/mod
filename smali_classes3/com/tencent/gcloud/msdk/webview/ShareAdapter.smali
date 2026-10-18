.class public Lcom/tencent/gcloud/msdk/webview/ShareAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;,
        Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;,
        Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemWidth:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;

.field private mResources:Landroid/content/res/Resources;

.field private mShareItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mItemWidth:I

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mResources:Landroid/content/res/Resources;

    .line 44
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mItemWidth:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;)Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mOnItemClickListener:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mShareItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->onBindViewHolder(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;I)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mShareItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;->shareTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mResources:Landroid/content/res/Resources;

    iget v3, v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->shareTitleResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;->shareIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mResources:Landroid/content/res/Resources;

    iget v0, v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;->shareIconResId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;->shareIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;-><init>(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;
    .locals 2

    .line 62
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->layout_share_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    iget p2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mItemWidth:I

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mItemWidth:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    :cond_0
    new-instance p2, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;-><init>(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemWidth(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mItemWidth:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mOnItemClickListener:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;

    return-void
.end method

.method public setShareData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemData;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->mShareItemList:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->notifyDataSetChanged()V

    return-void
.end method
