.class Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "ToolBarWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    const/4 p1, 0x0

    .line 644
    iput p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .line 765
    const-string v0, "onHideCustomView"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 771
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$002(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mOriginalOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 776
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 777
    iput-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 2

    .line 657
    invoke-static {}, Lcom/tencent/gcloud/msdk/view/LoadingView;->cancel()V

    .line 658
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/tencent/gcloud/msdk/webview/JsProcessor;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 661
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;->onJsPrompt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    return v1

    .line 669
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 2

    .line 675
    const-string v0, ""

    if-eqz p1, :cond_1

    .line 676
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 679
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "progress:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 681
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$300(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$ToolBarListener;->onProgress(I)V

    :cond_2
    const/16 p1, 0x64

    if-lt p2, p1, :cond_3

    .line 684
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$600(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    .line 685
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$700(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)V

    :cond_3
    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 650
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$500(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 731
    const-string v0, "onShowCustomView"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->onHideCustomView()V

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$002(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Landroid/view/View;)Landroid/view/View;

    const/high16 v0, -0x1000000

    .line 739
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 741
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mCustomViewCallback:Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;

    .line 743
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 744
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mOriginalSystemUiVisibility:I

    .line 745
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 746
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$1000(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xf06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 758
    :cond_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->mOriginalOrientation:I

    .line 759
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 693
    const-string p1, "onShowFileChooser"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 694
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$800(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 695
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$800(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 697
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$802(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 698
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 702
    :try_start_0
    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    .line 703
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 705
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return p2
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openFileChooser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 713
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$900(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 714
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$900(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 716
    :cond_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p2, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$902(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 717
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string p2, "*/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    :try_start_0
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebView$4;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebView;

    .line 722
    invoke-static {p3}, Lcom/tencent/gcloud/msdk/view/ToolBarWebView;->access$200(Lcom/tencent/gcloud/msdk/view/ToolBarWebView;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/tencent/gcloud/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 721
    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
