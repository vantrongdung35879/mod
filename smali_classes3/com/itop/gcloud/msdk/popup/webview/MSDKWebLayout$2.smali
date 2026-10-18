.class Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;
.super Ljava/lang/Object;
.source "MSDKWebLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;


# direct methods
.method constructor <init>(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$000(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$2;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$000(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;

    move-result-object p1

    sget-object v0, Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;->CANCEL:Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/itop/gcloud/msdk/popup/webview/IMSDKJSCall;->onJSCall(Lcom/itop/gcloud/msdk/popup/IMSDKPopupWindowCallback$Action;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
