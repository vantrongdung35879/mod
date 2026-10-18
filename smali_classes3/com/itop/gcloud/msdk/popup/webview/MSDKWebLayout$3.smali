.class Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;
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

    .line 102
    iput-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$100(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout$3;->this$0:Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;

    invoke-static {p1}, Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;->access$200(Lcom/itop/gcloud/msdk/popup/webview/MSDKWebLayout;)V

    return-void
.end method
