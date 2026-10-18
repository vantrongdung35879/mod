.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$6$1;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;->onPluginResult(Lcom/garena/android/model/Result;)V
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
        "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6$1;->this$1:Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/garena/android/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v0

    const-string v1, "[GarenaRecall] [ "

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6$1;->this$1:Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] step3 FAILED : saveTokenToPGS failed, errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->getExtraErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6$1;->this$1:Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] step3 SUCCESS : saveTokenToPGS success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Lcom/garena/android/model/Result;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$6$1;->onPluginResult(Lcom/garena/android/model/Result;)V

    return-void
.end method
