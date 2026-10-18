.class Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToGarena(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
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
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

.field final synthetic val$mediaTagName:Ljava/lang/String;

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    iput-object p6, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$mediaTagName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 510
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 513
    const-string v0, "] close output stream error : "

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/16 v2, 0xd4

    const-string v3, "[ "

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 521
    :try_start_0
    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v6, v6, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 522
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "garena-share"

    invoke-static {v6, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->getStoragePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] failed to save image : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v6, v6, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 525
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    new-instance v6, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "failed to save image"

    invoke-direct {v6, v2, v1, v4, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 528
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v5, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] save bitmap fail"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 533
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    new-instance v5, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "save bitmap fail"

    invoke-direct {v5, v2, v1, v4, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 539
    :cond_2
    :try_start_3
    new-instance p1, Lcom/beetalk/sdk/GGPhotoShare$Builder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getGarenaAppID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p1, v8, v5, v7}, Lcom/beetalk/sdk/GGPhotoShare$Builder;-><init>(ILjava/lang/String;I)V

    .line 540
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$mediaTagName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/beetalk/sdk/GGPhotoShare$Builder;->setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;

    .line 541
    const-string v5, ""

    invoke-virtual {p1, v5}, Lcom/beetalk/sdk/GGPhotoShare$Builder;->setMessageAction(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;

    .line 542
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v5, v5, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/beetalk/sdk/GGPhotoShare$Builder;->setMessageExt(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;

    .line 543
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGPhotoShare$Builder;->build()Lcom/beetalk/sdk/GGPhotoShare;

    move-result-object p1

    new-instance v7, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    iget-object v8, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->this$0:Lcom/tencent/gcloud/msdk/friend/GarenaFriend;

    iget v9, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    iget-object v10, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v2}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {v5, p1, v7}, Lcom/beetalk/sdk/GGPlatform;->GGSendMediaToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] garena share with image success"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 546
    :catch_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] Garena AppID is not a num"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 547
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    new-instance v5, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "Garena AppID is not a num"

    invoke-direct {v5, v2, v4, v4, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 556
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v5, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    .line 551
    :goto_2
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ] compress bitmap fail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 552
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    new-instance v6, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "compress bitmap fail"

    invoke-direct {v6, v2, v1, v4, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v6, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_3

    .line 556
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v5, :cond_4

    .line 556
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 561
    :cond_4
    :goto_6
    throw p1

    .line 514
    :cond_5
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] failed to get image:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 515
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to get image:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v3, v3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] queryBitmap onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const/16 v0, 0xd4

    .line 567
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 568
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
