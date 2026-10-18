.class public Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;
.source "FBShareVideoPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "facebook.share.video"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb58

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected needCheckFBInstalled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/beetalk/sdk/facebook/FBPostItem;

    .line 35
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/beetalk/sdk/facebook/FBPostItem;->videoPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lcom/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    new-instance v2, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    .line 43
    invoke-virtual {v2, v0}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;->getShareDialog(Landroid/app/Activity;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;->publishResult(Landroid/app/Activity;I)V

    return-void
.end method
