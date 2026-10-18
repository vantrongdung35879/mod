.class Lcom/centauri/oversea/business/h5/CTIWebActivity$1;
.super Ljava/lang/Object;
.source "CTIWebActivity.java"

# interfaces
.implements Lcom/centauri/oversea/business/h5/AIDLHandler$AIDLListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/CTIWebActivity;
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

    .line 133
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnServiceConnected()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/business/h5/url/IH5;->ifSetLocalCacheIP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$100(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/AIDLHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v2}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/centauri/oversea/business/h5/url/IH5;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/business/h5/AIDLHandler;->queryCacheIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/url/IH5;->setLocalCacheIP(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string v0, "process_load"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 151
    const-string v0, "page_load"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->start(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$300(Lcom/centauri/oversea/business/h5/CTIWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "loadUrl url: "

    const-string v2, "CTIWebActivity"

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$400(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$200(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v1

    iget-object v3, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-virtual {v3}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/centauri/oversea/business/h5/url/IH5;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v0}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$400(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/webview/MWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-static {v1}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->access$000(Lcom/centauri/oversea/business/h5/CTIWebActivity;)Lcom/centauri/oversea/business/h5/url/IH5;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/business/h5/CTIWebActivity$1;->this$0:Lcom/centauri/oversea/business/h5/CTIWebActivity;

    invoke-virtual {v2}, Lcom/centauri/oversea/business/h5/CTIWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/business/h5/url/IH5;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
