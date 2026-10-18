.class Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;
.super Ljava/lang/Object;
.source "ShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->onBindViewHolder(Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

.field final synthetic val$holder:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->this$0:Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->val$holder:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

    iput p3, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->this$0:Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->access$000(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;)Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->this$0:Lcom/tencent/gcloud/msdk/webview/ShareAdapter;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter;->access$000(Lcom/tencent/gcloud/msdk/webview/ShareAdapter;)Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->val$holder:Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$ItemHolder;->shareIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
