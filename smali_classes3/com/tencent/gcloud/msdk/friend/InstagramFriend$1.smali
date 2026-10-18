.class Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "InstagramFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/friend/InstagramFriend;->dealNetImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
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
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/friend/InstagramFriend;

.field final synthetic val$observerID:I

.field final synthetic val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/friend/InstagramFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/InstagramFriend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->onNotify(Ljava/util/HashMap;)V

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

    .line 219
    const-string v0, "close output stream error : "

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xd3

    const-string v4, "[ "

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x3

    const/4 v5, 0x0

    .line 226
    :try_start_0
    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v6, v6, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 227
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "system-share"

    invoke-static {v6, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->getStoragePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ] failed to save image : "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v6, v6, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 230
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    new-instance v6, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "failed to save image"

    invoke-direct {v6, v3, v1, v2, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "MSDKInsShareTemp.png"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 237
    :cond_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v5, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] failed to save bitmap"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 241
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    new-instance v5, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v7, "failed to save bitmap"

    invoke-direct {v5, v3, v1, v2, v7}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v5, v7}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
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

    .line 245
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->this$0:Lcom/tencent/gcloud/msdk/friend/InstagramFriend;

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget v7, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    iget-object v8, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v5, v7, v8}, Lcom/tencent/gcloud/msdk/friend/InstagramFriend;->insShareLocalImg(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v5, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    .line 249
    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] failed to compress bitmap : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 250
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    new-instance v4, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v6, "failed to compress bitmap"

    invoke-direct {v4, v3, v1, v2, v6}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v4, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_4

    .line 254
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v5, :cond_5

    .line 254
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 257
    :cond_5
    :goto_5
    throw p1

    .line 220
    :cond_6
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] failed to deal image : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$reqInfo:Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 221
    iget p1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0xb

    const-string v4, "failed to deal image"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] queryBitmap onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xd3

    .line 265
    iput v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 266
    iget v0, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$observerID:I

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/friend/InstagramFriend$1;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
