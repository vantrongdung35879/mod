.class Lcom/centauri/oversea/business/h5/CTIWebActivity$5;
.super Ljava/lang/Object;
.source "CTIWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 249
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 252
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$500(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$600(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$300(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "loadUrl url: "

    const-string v1, "CTIWebActivity"

    if-nez p1, :cond_0

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$400(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v0

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/centauri/oversea/business/h5/url/IH5;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$400(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$5;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-virtual {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/url/IH5;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
