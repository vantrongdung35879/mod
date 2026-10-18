.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MSDKGarenaSessionCallBack"
.end annotation


# instance fields
.field private autoLoginSource:Ljava/lang/String;

.field private guestSession:Lcom/beetalk/sdk/GGLoginSession;

.field private params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

.field private recallToken:Lcom/beetalk/sdk/networking/model/RecallToken;


# direct methods
.method public constructor <init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 604
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->autoLoginSource:Ljava/lang/String;

    .line 606
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->recallToken:Lcom/beetalk/sdk/networking/model/RecallToken;

    .line 609
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    .line 610
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->guestSession:Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;)V
    .locals 1

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->recallToken:Lcom/beetalk/sdk/networking/model/RecallToken;

    .line 614
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    .line 615
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->guestSession:Lcom/beetalk/sdk/GGLoginSession;

    .line 616
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->autoLoginSource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V
    .locals 0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    .line 621
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->guestSession:Lcom/beetalk/sdk/GGLoginSession;

    .line 622
    iput-object p3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->autoLoginSource:Ljava/lang/String;

    .line 623
    iput-object p4, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->recallToken:Lcom/beetalk/sdk/networking/model/RecallToken;

    return-void
.end method


# virtual methods
.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 7

    const/16 v0, 0x65

    if-nez p1, :cond_0

    .line 630
    new-instance p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    const/4 v5, -0x1

    const-string v6, "garena session error"

    const/4 v3, 0x3

    const-string v4, "garena session error"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 638
    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    const-string v3, "[ "

    if-ne v1, v2, :cond_1

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] opening new session"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void

    .line 644
    :cond_1
    const-string v1, " ] login failed : "

    if-eqz p2, :cond_2

    .line 645
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v2, v2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 646
    new-instance p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "login get exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 650
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x270f

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 646
    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void

    .line 655
    :cond_2
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p2

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p2, v2, :cond_4

    .line 656
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] session token is available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 657
    const-string p2, "recall"

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->autoLoginSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 658
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[GarenaRecall] [ "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] restoreLoginSession success"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 659
    invoke-static {p2}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->setRecallSuccessFlag(Z)V

    .line 662
    :cond_3
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v1, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->guestSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->autoLoginSource:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->recallToken:Lcom/beetalk/sdk/networking/model/RecallToken;

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->access$200(Ljava/lang/String;ILjava/lang/String;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V

    goto/16 :goto_1

    .line 665
    :cond_4
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p2

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, ", "

    if-ne p2, v2, :cond_5

    .line 666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] login canceled : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 667
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "garena login canceled "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v5

    .line 671
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorStringFromCode(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 667
    invoke-static {v0, p2, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 673
    :cond_5
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p2

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p2, v2, :cond_8

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p2

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_6

    goto/16 :goto_0

    .line 681
    :cond_6
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p2

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] invalid token : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 684
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "garena login invalid authToken. Please Logout then reLogin "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v5

    .line 688
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorStringFromCode(I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0xa

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 684
    invoke-static {v0, p2, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v2, v2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 692
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "garena session status error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v5

    .line 696
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorStringFromCode(I)Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x270f

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 692
    invoke-static {v0, p2, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 675
    :cond_8
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] network error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 676
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget v2, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->methodID:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "garena login network error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v5

    .line 680
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorStringFromCode(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;->params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    .line 676
    invoke-static {v0, p2, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
