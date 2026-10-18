.class Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;->onNotify(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->this$1:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->this$1:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setWebViewBackground(Landroid/graphics/Bitmap;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->this$1:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3$1;->this$1:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$3;->val$imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$302(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
