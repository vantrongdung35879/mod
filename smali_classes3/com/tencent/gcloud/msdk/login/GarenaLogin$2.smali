.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin;->login(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

.field final synthetic val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

.field final synthetic val$finalLastSession:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession$Builder;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$finalLastSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] clear finished execute GGGetSessionForBind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    const v1, 0xdbec

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    .line 204
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->initializeForBind(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 205
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$2;->val$finalLastSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {v1, v2, v3}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->GGGetSessionForBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method
