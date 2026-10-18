.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/webview/ShareAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->initShareLayoutData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 1099
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1100
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$600(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;)Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12$1;-><init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$12;I)V

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu;->dismiss(Lcom/tencent/gcloud/msdk/webview/ShareAnimMenu$IDismissListener;)V

    :cond_0
    return-void
.end method
