.class public abstract Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "BasePhotoSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/GGPhotoShare;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x1fa400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method

.method private static getCompressedBytes(Landroid/graphics/Bitmap;II)[B
    .locals 5

    .line 120
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 123
    :goto_0
    array-length v2, v1

    if-le v2, p1, :cond_0

    const/16 v2, 0x1e

    if-lt p2, v2, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-double v1, p2

    const-wide v3, 0x3feb333333333333L    # 0.85

    mul-double v1, v1, v3

    double-to-int p2, v1

    .line 126
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method protected execute(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;)V
    .locals 12

    .line 36
    const-string v0, "com.garena.gas"

    .line 0
    const-string v1, "File doesn\'t exist:"

    .line 37
    :try_start_0
    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x55

    const v5, 0x7a120

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_4

    .line 39
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "File doesn\'t exist"

    invoke-virtual {p0, p1, p2, v0}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 49
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 52
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, 0x1

    :goto_0
    mul-int v10, v3, v8

    const v11, 0x1fa400

    if-le v10, v11, :cond_1

    .line 55
    div-int/lit8 v3, v3, 0x2

    .line 56
    div-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 59
    :cond_1
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    .line 64
    :cond_2
    iput v9, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 65
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v3, v6

    if-nez v8, :cond_3

    const/4 v10, 0x3

    if-lt v3, v10, :cond_2

    .line 70
    :cond_3
    invoke-static {v8, v5, v4}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->getCompressedBytes(Landroid/graphics/Bitmap;II)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 72
    :try_start_2
    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 77
    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getImgData()[B

    move-result-object v1

    if-nez v1, :cond_5

    .line 79
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "fail to load image"

    invoke-virtual {p0, p1, p2, v0}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void

    .line 84
    :cond_5
    array-length v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-le v2, v5, :cond_6

    .line 86
    :try_start_3
    array-length v2, v1

    invoke-static {v1, v7, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    invoke-static {v1, v5, v4}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->getCompressedBytes(Landroid/graphics/Bitmap;II)[B

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 89
    :try_start_4
    invoke-static {p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 90
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void

    .line 95
    :cond_6
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 96
    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 97
    :cond_7
    const-string v0, "com.garena.gaslite"

    .line 98
    :goto_3
    const-string v3, "com.garena.gameauth.GPProxyCommonActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v0, "com.garena.msdk.share.ImgData"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 102
    const-string v0, "com.garena.msdk.share.MediaTagName"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getMediaTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v0, "com.garena.msdk.share.ItemType"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v0, "com.garena.msdk.share.OpenId"

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v0, "com.garena.msdk.share.ShareTo"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getScene()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v0, "com.garena.msdk.share.MessageExt"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getMessageAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v0, "com.garena.msdk.share.ImgDataLength"

    array-length v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v0, "com.garena.msdk.share.GameId"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGPhotoShare;->getGameId()I

    move-result p2

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string p2, "com.garena.msdk.share.AutoAuth"

    invoke-virtual {v2, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string p2, "com.garena.msdk.share.SDKVer"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string p2, "com.garena.msdk.share.SDKEnv"

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 114
    invoke-static {p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    .line 115
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method protected abstract getIntentAction()Ljava/lang/String;
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 139
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    :goto_0
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 140
    const-string p3, ""

    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/plugin/impl/BasePhotoSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
