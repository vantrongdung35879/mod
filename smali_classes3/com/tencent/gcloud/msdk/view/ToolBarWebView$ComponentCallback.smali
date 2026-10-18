.class Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;
.super Ljava/lang/Object;
.source "ToolBarWebView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;


# direct methods
.method private constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/gcloud/msdk/view/ToolBarWebView$1;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;-><init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 786
    const-string v0, "Toolbar WebView onConfigurationChanged"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;I)V

    .line 788
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ComponentCallback;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ShareView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/view/ShareView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 793
    const-string v0, "onLowMemory"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void
.end method
