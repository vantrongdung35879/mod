.class Lcom/tencent/gcloud/msdk/view/ShareView$2;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ShareView;->resetAdapter(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ShareView;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ShareView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$2;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ShareView$2;->this$0:Lcom/tencent/gcloud/msdk/view/ShareView;

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/view/ShareView;->dismiss(I)V

    return-void
.end method
