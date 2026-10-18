.class Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;
.super Ljava/lang/Object;
.source "GarenaExtend.java"

# interfaces
.implements Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/extend/GarenaExtend;->openRegistrationForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/extend/GarenaExtend;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/extend/GarenaExtend;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->this$0:Lcom/tencent/gcloud/msdk/extend/GarenaExtend;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed()V
    .locals 5

    .line 424
    new-instance v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    const-string v1, "Garena"

    const-string v2, "OnRegistrationFormDialogClosed"

    const/16 v3, 0x457

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x44d

    .line 425
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->val$seqID:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogShown()V
    .locals 5

    .line 418
    new-instance v0, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    const-string v1, "Garena"

    const-string v2, "OnRegistrationFormDialogShown"

    const/16 v3, 0x457

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x44d

    .line 419
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->val$seqID:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Lcom/garena/android/model/Result;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/registration/model/RegistrationFormResult;",
            ">;)V"
        }
    .end annotation

    .line 383
    const-string v0, "openRegistrationForm"

    const-string v1, "Garena"

    .line 0
    const-string v2, "openRegistrationForm callback result:"

    const-string v3, "openRegistrationForm callback"

    const/16 v4, 0x44d

    const/16 v5, 0x270f

    const/16 v6, 0x457

    .line 385
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    new-instance v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v1, v0}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 391
    :try_start_1
    const-string v8, "hasUserSkipped"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->getHasSkipped()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    const-string v8, "isFormRequired"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isRequired()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    const-string v8, "isSkippable"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->isSkippable()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string v8, "hasIdentified"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->getHasIdentified()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string v8, "gameMinimumAge"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->getGameMinAge()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    const-string v8, "govMinimumAge"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {v9}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->getGovernmentMinAge()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 397
    const-string/jumbo v8, "wasFormDisplayed"

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;->getWasFormDisplayed()Z

    move-result p1

    invoke-virtual {v7, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 401
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extraJson:Ljava/lang/String;

    goto :goto_1

    .line 403
    :cond_0
    new-instance v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    invoke-direct {v3, v6, v5, v1, v0}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->thirdCode:I

    .line 405
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->thirdMsg:Ljava/lang/String;

    .line 407
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;->extraJson:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->val$seqID:Ljava/lang/String;

    invoke-static {v4, v3, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 411
    new-instance p1, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;

    invoke-direct {p1, v6, v5, v1, v0}, Lcom/tencent/gcloud/msdk/api/extend/MSDKExtendRet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/extend/GarenaExtend$2;->val$seqID:Ljava/lang/String;

    invoke-static {v4, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
