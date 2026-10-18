.class Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;
.super Ljava/lang/Object;
.source "EmbedWebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->setPosition(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

.field final synthetic val$height:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;IIII)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    iput p2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$x:I

    iput p3, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$y:I

    iput p4, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$width:I

    iput p5, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 188
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPosition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$202(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    .line 194
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$200(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    .line 197
    invoke-static {v1}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$200(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    .line 198
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$200(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$102(Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    :cond_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const v1, 0x800033

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 204
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 206
    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->val$height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 208
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager$2;->this$0:Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$000(Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    move-result-object v0

    invoke-static {}, Lcom/tencent/gcloud/msdk/embedwebview/EmbedWebViewManager;->access$100()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
