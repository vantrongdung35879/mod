.class Lcom/centauri/oversea/business/h5/webview/MWebView$4;
.super Landroid/webkit/WebChromeClient;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/business/h5/webview/MWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;


# direct methods
.method constructor <init>(Lcom/centauri/oversea/business/h5/webview/MWebView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$600(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$600(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;->onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V

    .line 271
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .line 224
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 228
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$300(Lcom/centauri/oversea/business/h5/webview/MWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 230
    const-string p1, "page_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 231
    const-string/jumbo v0, "webview_load"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->stop(Ljava/lang/String;)J

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->duration(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, "&processtime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, "process_load"

    invoke-static {v0}, Lcom/centauri/oversea/comm/MTimer;->duration(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "&pagetime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->duration(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    const-string p1, "&isvisable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo p1, "webview_dom_load"

    invoke-static {p1}, Lcom/centauri/oversea/comm/MTimer;->duration(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    const-string p1, "&isCache="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$400(Lcom/centauri/oversea/business/h5/webview/MWebView;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Lcom/centauri/oversea/comm/CTIDataReportManager;->instance()Lcom/centauri/oversea/comm/CTIDataReportManager;

    move-result-object p1

    const-string v0, "sdk.webview.end"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/comm/CTIDataReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$500(Lcom/centauri/oversea/business/h5/webview/MWebView;)V

    .line 251
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$302(Lcom/centauri/oversea/business/h5/webview/MWebView;Z)Z

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$600(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/centauri/oversea/business/h5/webview/MWebView$4;->this$0:Lcom/centauri/oversea/business/h5/webview/MWebView;

    invoke-static {p1}, Lcom/centauri/oversea/business/h5/webview/MWebView;->access$600(Lcom/centauri/oversea/business/h5/webview/MWebView;)Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/centauri/oversea/business/h5/webview/MWebView$WebChromeClientListener;->onProgressChanged(I)V

    :cond_1
    return-void
.end method
