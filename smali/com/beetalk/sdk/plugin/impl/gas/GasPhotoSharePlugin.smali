.class public Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;
.source "GasPhotoSharePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;)V
    .locals 7

    if-nez p2, :cond_0

    .line 42
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGPlatform;->GGIsPlatformInstalled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    .line 48
    :cond_1
    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->isSupportGasShare(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    .line 53
    :cond_2
    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->isSupportGasBigImageShare(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "File doesn\'t exist:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "File doesn\'t exist"

    invoke-virtual {p0, p1, p2, v0}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void

    .line 63
    :cond_3
    invoke-static {p1, v2}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 66
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    .line 70
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v5, "com.garena.gas"

    invoke-static {v5, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 72
    :cond_5
    const-string v5, "com.garena.gaslite"

    .line 73
    :goto_0
    const-string v6, "com.garena.gameauth.GPProxyCommonActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v5, "com.garena.gas.intent.GAME_SHARE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    const-string v1, "com.garena.msdk.share.MediaTagName"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getMediaTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "com.garena.msdk.share.ItemType"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.garena.msdk.share.OpenId"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v0, "com.garena.msdk.share.ShareTo"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getScene()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v0, "com.garena.msdk.share.MessageExt"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getMessageAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "com.garena.msdk.share.ImgDataLength"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v0, "com.garena.msdk.share.GameId"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getGameId()I

    move-result p2

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string p2, "com.garena.msdk.share.AutoAuth"

    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string p2, "com.garena.msdk.share.SDKVer"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.garena.msdk.share.SDKEnv"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 93
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->execute(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;)V

    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p2, Lcom/beetalk/sdk/GGPhotoShare;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "gas.share.photo"

    return-object v0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "com.garena.gas.intent.GAME_SHARE"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb4f

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
