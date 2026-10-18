.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->onPluginResult(Lcom/garena/android/model/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/beetalk/sdk/GGPlatform$Callback<",
        "Lcom/garena/android/model/Result<",
        "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/garena/android/model/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v0

    const-string v1, "[GarenaRecall] [ "

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] step1 FAILED : recallTokenFromPGS failed, errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getExtraErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->access$100(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/garena/pay/android/GGErrorCode;)V

    return-void

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getTokens()Ljava/util/List;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 356
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 362
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beetalk/sdk/networking/model/RecallToken;

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v4, v4, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v4, v4, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] step1 SUCCESS : recallTokenFromPGS got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " token(s), uid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/model/RecallToken;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", platform = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPlatform()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". step2 : restoreLoginSession start"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/model/RecallToken;->getLoginPlatform()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil;->getSubChannelByPlatform(I)Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/IT;->isNonEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    iget-object v3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v3, v3, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iput-object p1, v3, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->subChannel:Ljava/lang/String;

    .line 370
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] recall subChannel resolved : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v3, v3, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    const-string v4, "recall"

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/String;Lcom/beetalk/sdk/networking/model/RecallToken;)V

    invoke-static {p1, v2, v1}, Lcom/beetalk/sdk/GGPlatform;->restoreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void

    .line 357
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] step1 success but tokens empty, no recall token found -> NEED_LOGIN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    const-string v0, "no recall token found"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->access$000(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p1, Lcom/garena/android/model/Result;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;->onPluginResult(Lcom/garena/android/model/Result;)V

    return-void
.end method
