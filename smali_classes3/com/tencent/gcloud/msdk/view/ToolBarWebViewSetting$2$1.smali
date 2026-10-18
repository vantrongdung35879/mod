.class Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "ToolBarWebViewSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 305
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Download image from url failed\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Download image from url failed, url invalid:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 318
    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 319
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    const-string p1, "Download image from url failed, no sdcard permissions"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    return-void

    .line 331
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting;->saveToAlbum(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2$1;->this$0:Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/view/ToolBarWebViewSetting$2;->val$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    const-string p1, "Send broadcast done"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 0

    return-void
.end method
