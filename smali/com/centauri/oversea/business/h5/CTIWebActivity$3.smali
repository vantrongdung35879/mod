.class Lcom/centauri/oversea/business/h5/CTIWebActivity$3;
.super Ljava/lang/Object;
.source "CTIWebActivity.java"

# interfaces
.implements Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/centauri/oversea/business/h5/CTIWebActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/CTIWebActivity;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/business/h5/url/IH5;->onJsAlert(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$900(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;

    move-result-object p1

    iget-object p2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p2}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/centauri/oversea/business/h5/url/IH5;->getInterceptItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/centauri/oversea/business/h5/webview/MUrlIntercept;->setInterceptItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "progress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTIWebActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 232
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$700(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$700(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$3;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$700(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
