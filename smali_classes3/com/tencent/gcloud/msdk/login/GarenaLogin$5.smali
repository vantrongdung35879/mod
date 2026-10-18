.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin;->recallLogin(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
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
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/garena/android/model/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/android/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v0

    const-string v1, "[GarenaRecall] [ "

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] step0 SUCCESS : PGS signed in, step1 : GGPlatform.recallTokenFromPGS start, return true to core (async handled)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5$1;-><init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGPlatform;->recallTokenFromPGS(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void

    .line 339
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] step0 SKIP : PGS not signed in or check failed (isFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "), skip recall to avoid popup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    const-string v0, "PGS not signed in or check failed, skip recall to avoid popup during autoLogin"

    invoke-static {p1, v0}, Lcom/tencent/gcloud/msdk/login/GarenaLogin;->access$000(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    .line 333
    check-cast p1, Lcom/garena/android/model/Result;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$5;->onPluginResult(Lcom/garena/android/model/Result;)V

    return-void
.end method
