.class Lcom/centauri/oversea/business/h5/CTIWebActivity$2;
.super Ljava/lang/Object;
.source "CTIWebActivity.java"

# interfaces
.implements Lcom/centauri/oversea/business/h5/webview/MWebView$WebViewClientListener;


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

    .line 195
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 209
    const-string p1, "CTIWebActivity"

    const-string/jumbo p2, "setListeners onPageFinished"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestError(Ljava/lang/String;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$500(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$600(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$700(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$2;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$800(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
