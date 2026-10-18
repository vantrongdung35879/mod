.class Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "WhatsAppFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V
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
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;

.field final synthetic val$methodID:I

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;II)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    iput p6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    invoke-direct {p0, p2}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->onNotify(Ljava/util/HashMap;)V

    return-void
.end method

.method public onNotify(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 210
    const-string v0, "close output stream error : "

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "[ "

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 217
    :try_start_0
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v5, v5, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 218
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "WhatsAppSend"

    invoke-static {v5, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->getStoragePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 219
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    .line 224
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v7, "MSDKWhatsAppSendTemp.png"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 228
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v4, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] failed to save bitmap"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 232
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    new-instance v4, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    const-string v7, "failed to save bitmap"

    invoke-direct {v4, v6, v1, v2, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v4, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 236
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    .line 237
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget v6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    iget v8, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    invoke-virtual {p1, v4, v6, v7, v8}, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend;->whatsAppSendLocalMedia(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto/16 :goto_5

    :catch_2
    move-exception p1

    move-object v4, v5

    goto :goto_2

    .line 220
    :cond_4
    :goto_1
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] failed to save image : "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v5, v5, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 221
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    new-instance v5, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    const-string v7, "failed to save image"

    invoke-direct {v5, v6, v1, v2, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 240
    :goto_2
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] file operation catch exception : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 241
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    new-instance v3, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v5, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    const-string v6, "catch FileNotFoundException"

    invoke-direct {v3, v5, v1, v2, v6}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_5

    .line 245
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :goto_5
    if-eqz v4, :cond_6

    .line 245
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 248
    :cond_6
    :goto_6
    throw p1

    .line 211
    :cond_7
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] failed to deal image : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 212
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    iget v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    const/4 v3, -0x1

    const-string v4, "failed to deal network image"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] queryBitmap onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$methodID:I

    iput v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 257
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/WhatsAppFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
