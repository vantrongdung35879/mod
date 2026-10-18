.class public Lcom/tencent/gcloud/msdk/friend/GarenaFriend;
.super Ljava/lang/Object;
.source "GarenaFriend.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/core/friend/IFriend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]  Garena Friend initialize start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method private isCurrentSession(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Z
    .locals 1

    .line 847
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 689
    iget v4, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const-string v5, "FB Messenger app is not installed"

    const-string v6, " ] FB Messenger app is not installed"

    const/16 v7, 0xf

    const/16 v8, 0xb

    const-string v9, "[ "

    const/16 v10, 0xd4

    packed-switch v4, :pswitch_data_0

    .line 771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] not support send type to Facebook: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 772
    new-instance v4, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "not support send type to Facebook: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-direct {v4, v10, v5, v5, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v4, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    :pswitch_0
    iget-object v4, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] reqInfo.desc is empty"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 695
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v4, "reqInfo.desc is empty"

    invoke-direct {v1, v10, v8, v8, v4}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 699
    :cond_0
    iget-object v4, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->user:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 703
    :try_start_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->user:Ljava/lang/String;

    iget-object v13, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v14, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    const-string v15, ""

    new-instance v4, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v4, v0, v3, v2, v10}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    move-object/from16 v16, v4

    .line 702
    invoke-static/range {v11 .. v16}, Lcom/beetalk/sdk/GGPlatform;->GGSendGameRequestToFacebookUser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 710
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ] invalid Facebook userId format : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->user:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 711
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v4, 0x3

    const-string v5, "reqInfo.user is not a num"

    invoke-direct {v1, v10, v4, v8, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 718
    :cond_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    new-instance v6, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v6, v0, v3, v2, v10}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    .line 717
    invoke-static {v4, v5, v1, v6}, Lcom/beetalk/sdk/GGPlatform;->GGSendRequestInvitationToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    goto/16 :goto_0

    .line 745
    :pswitch_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->checkFBMessengerInstalled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 747
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {v1, v10, v7, v7, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 750
    :cond_2
    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    new-instance v4, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;

    invoke-direct {v4, v0, v3, v2}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$5;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;)V

    invoke-static {v1, v10, v2, v4}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->queryAndCompressBitmap(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V

    goto :goto_0

    .line 728
    :pswitch_2
    invoke-static {}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->checkFBMessengerInstalled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 730
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {v1, v10, v7, v7, v5}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 734
    :cond_3
    iget-object v4, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isLinkFormCorrect(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] info.link must start with http or https"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 736
    new-instance v1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v4, "info.link must start with http or https"

    invoke-direct {v1, v10, v8, v8, v4}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 740
    :cond_4
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v13, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    iget-object v14, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    iget-object v15, v1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    new-instance v1, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v1, v0, v3, v2, v10}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lcom/beetalk/sdk/GGPlatform;->GGSendMessageToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendToGarena(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    .line 392
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->GGIsPlatformInstalled(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "[ "

    const/16 v9, 0xd4

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] garena app is not installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "garena app is not installed"

    const/16 v2, 0xf

    invoke-direct {v0, v9, v2, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_0
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-direct {v7, v0}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->isCurrentSession(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Z

    move-result v0

    const/4 v2, 0x7

    if-nez v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] current login session is not garena"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "current login session is not garena"

    invoke-direct {v0, v9, v2, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 404
    :cond_1
    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    const-string v3, "mediaTagName"

    invoke-static {v0, v3}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 405
    invoke-static {v12}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] need to assign mediaTagName in reqInfo.extraJson"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "need to assign mediaTagName in reqInfo.extraJson"

    invoke-direct {v0, v9, v3, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_2
    iget v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] not support send type to Garana: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 575
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "not support send type to Garana: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v2, v2, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :pswitch_0
    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] reqInfo.imagePath is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "reqInfo.imagePath is empty"

    invoke-direct {v0, v9, v3, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 510
    :cond_3
    new-instance v9, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$3;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->queryBitmap(Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :pswitch_1
    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    const-string v2, "caption"

    invoke-static {v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 451
    invoke-static {v15}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] need to assign caption in reqInfo.extraJson"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "need to assign caption in reqInfo.extraJson"

    invoke-direct {v0, v9, v3, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_4
    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isLinkFormCorrect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] info.link must start with http or https"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 461
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v1, "info.link must start with http or https"

    invoke-direct {v0, v9, v3, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {v5, v0, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 465
    :cond_5
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v13, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    iget-object v14, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v0, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    iget-object v1, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->thumbPath:Ljava/lang/String;

    new-instance v2, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;

    invoke-direct {v2, v7, v6, v5}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$2;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Ljava/lang/String;I)V

    const/4 v11, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v10 .. v18}, Lcom/beetalk/sdk/GGPlatform;->GGSendLinkToSession(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v10, v8, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->thumbPath:Ljava/lang/String;

    new-instance v11, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$1;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v10, v9, v6, v11}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->queryAndCompressBitmap(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shareOrSendToLine(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;II)V
    .locals 4

    .line 789
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->GGCheckLineInstalled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "[ "

    if-nez v0, :cond_0

    .line 790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] Line app is not installed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 791
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "Line app is not installed"

    const/16 v1, 0xf

    invoke-direct {p1, p4, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 796
    :cond_0
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v2, 0x2711

    const/16 v3, 0xb

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2712

    if-eq v0, v2, :cond_1

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] not support send or share type to Line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 831
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not support send or share type to Line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {v0, p4, v1, v1, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 813
    :cond_1
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] reqInfo.imagePath is empty"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 815
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "reqInfo.imagePath is empty"

    invoke-direct {p1, p4, v3, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 819
    :cond_2
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->handleImageOnKitKat(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    .line 824
    :cond_3
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$Builder;

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;-><init>(Lcom/beetalk/sdk/line/LinePostItem$PostType;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    .line 825
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->imagePath(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->build()Lcom/beetalk/sdk/line/LinePostItem;

    move-result-object p1

    goto :goto_0

    .line 800
    :cond_4
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isLinkFormCorrect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 801
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] info.link must start with http or https"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 802
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "info.link must start with http or https"

    invoke-direct {p1, p4, v3, v3, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 805
    :cond_5
    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$Builder;

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;-><init>(Lcom/beetalk/sdk/line/LinePostItem$PostType;)V

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    .line 806
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->message(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    .line 807
    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->link(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$Builder;

    move-result-object p1

    .line 808
    invoke-virtual {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->build()Lcom/beetalk/sdk/line/LinePostItem;

    move-result-object p1

    .line 837
    :goto_0
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/GGPlatform;->GGShareToLine(Landroid/app/Activity;Lcom/beetalk/sdk/line/LinePostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method private shareToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 10

    .line 592
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    const-string v1, "caption"

    invoke-static {v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xb

    const-string v3, "[ "

    const/16 v8, 0xd3

    if-eqz v1, :cond_0

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] need to assign caption in reqInfo.extraJson"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 595
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "need to assign caption in reqInfo.extraJson"

    invoke-direct {p1, v8, v2, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_0
    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    const/16 v4, 0x2711

    if-eq v1, v4, :cond_7

    const/16 v4, 0x2712

    if-eq v1, v4, :cond_6

    const/16 v0, 0x2715

    if-eq v1, v0, :cond_1

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] not support share type to Facebook: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 673
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not support share type to Facebook: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {v0, v8, v1, v1, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, v0, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 643
    :cond_1
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->GGIsPlatformInstalled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] facebook app is not installed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 645
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "facebook app is not installed"

    const/16 v1, 0xf

    invoke-direct {p1, v8, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 649
    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->checkSessionValidity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] share video to facebookReels need login first!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 651
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "share video to facebookReels need login first!"

    const/16 v1, 0xa

    invoke-direct {p1, v8, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 656
    :cond_3
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->thumbPath:Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_4
    const-string v0, ""

    .line 660
    :goto_0
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->mediaPath:Ljava/lang/String;

    new-instance v2, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v2, p0, p3, p2, v8}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {v1, v0, p1, v2}, Lcom/beetalk/sdk/GGPlatform;->GGShareVideoToFacebookReels(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    goto/16 :goto_1

    .line 666
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] the mediaPath could not be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 667
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string/jumbo v0, "the mediaPath could not be null"

    invoke-direct {p1, v8, v2, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 616
    :cond_6
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    new-instance v9, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$4;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v1, v8, p2, v9}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->queryAndCompressBitmap(Ljava/lang/String;ILjava/lang/String;Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;)V

    goto :goto_1

    .line 605
    :cond_7
    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->isLinkFormCorrect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] info.link must start with http or https"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 607
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "info.link must start with http or https"

    invoke-direct {p1, v8, v2, v2, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 611
    :cond_8
    new-instance v1, Lcom/beetalk/sdk/facebook/FBPostItem;

    iget-object v3, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->desc:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->link:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->imagePath:Ljava/lang/String;

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/beetalk/sdk/facebook/FBPostItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;

    invoke-direct {v0, p0, p3, p2, v8}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend$MSDKGarenaFriendCallback;-><init>(Lcom/tencent/gcloud/msdk/friend/GarenaFriend;ILjava/lang/String;I)V

    invoke-static {p1, v1, v0}, Lcom/beetalk/sdk/GGPlatform;->GGSendLinkToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addFriend(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] not support addFriend"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 263
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd6

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public isBackendSupported(IILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public needOpenid2Uid(ILcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public queryFriends(Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[ "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ] not support queryFriends"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 301
    :try_start_0
    new-instance p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p3, p4}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x7

    .line 302
    :try_start_1
    iput p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    .line 304
    iget p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retCode:I

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->retMsg:Ljava/lang/String;

    const/16 p1, 0xd5

    .line 305
    iput p1, p3, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendRet;->methodNameID:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p3

    .line 307
    :catch_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] queryFriends json exception"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    move-object p3, p1

    :goto_0
    const/16 p1, 0xca

    .line 309
    invoke-static {p1, p3, p5}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] with args reqInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observerId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 193
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    const-string/jumbo v2, "subChannel"

    invoke-static {v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xd4

    if-eqz v2, :cond_0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] need to assign subChannel in reqInfo.extraJson"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 196
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "need to assign subChannel in reqInfo.extraJson"

    const/16 v1, 0xb

    invoke-direct {p1, v3, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Garena"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "Facebook"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Line"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] not support sendMessage type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 213
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not support sendMessage type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p1, v3, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToGarena(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V

    goto :goto_1

    .line 206
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->sendToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V

    goto :goto_1

    .line 209
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->shareOrSendToLine(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;II)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x242414 -> :sswitch_2
        0x217bfee6 -> :sswitch_1
        0x7eb45720 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendToGameCenter(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 2

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] not support sendToGameCenter"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 247
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v0, 0xd7

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V
    .locals 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] with args reqInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observerId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;->extraJson:Ljava/lang/String;

    const-string/jumbo v2, "subChannel"

    invoke-static {v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/IT;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xd3

    if-eqz v2, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] need to assign subChannel in reqInfo.extraJson"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 133
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string v0, "need to assign subChannel in reqInfo.extraJson"

    const/16 v1, 0xb

    invoke-direct {p1, v3, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Garena"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "GameFriends"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "Facebook"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "Line"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] not support share type : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 149
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not support share type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p1, v3, v1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    invoke-static {p3, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_2
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->shareOrSendToLine(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;II)V

    goto :goto_2

    .line 140
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/gcloud/msdk/friend/GarenaFriend;->shareToFacebook(Lcom/tencent/gcloud/msdk/api/friend/MSDKFriendReqInfo;Ljava/lang/String;I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x242414 -> :sswitch_3
        0x217bfee6 -> :sswitch_2
        0x37af4923 -> :sswitch_1
        0x7eb45720 -> :sswitch_0
    .end sparse-switch
.end method
