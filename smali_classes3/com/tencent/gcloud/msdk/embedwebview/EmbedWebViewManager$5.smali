.class Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->onShareCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

.field final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    iput p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$500(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$5;->val$retCode:I

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/ShareManager;->showToast(Landroid/content/Context;I)V

    return-void
.end method
