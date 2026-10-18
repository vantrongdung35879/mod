.class Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;)V
    .locals 0

    .line 1609
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1612
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->val$toSaveUrlStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4100(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1615
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->val$toSaveUrlStr:Ljava/lang/String;

    const-string v2, "data:image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->val$toSaveUrlStr:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1617
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1620
    :cond_0
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->val$toSaveUrlStr:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1621
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 1623
    :goto_0
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1627
    :cond_1
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15$1;->this$1:Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;

    iget-object v2, v2, Lcom/tencent/gcloud/msdk/webview/WebViewActivity$15;->this$0:Lcom/tencent/gcloud/msdk/webview/WebViewActivity;

    invoke-static {v2, v1, v0}, Lcom/tencent/gcloud/msdk/webview/WebViewActivity;->access$4200(Lcom/tencent/gcloud/msdk/webview/WebViewActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1629
    :cond_2
    const-string v0, "Photo bitmap is null"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
