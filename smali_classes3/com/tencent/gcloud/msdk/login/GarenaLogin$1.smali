.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;
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
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/beetalk/sdk/GGLoginSession$Builder;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$finalLastSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 191
    const-string v0, "clearAppPlatformBindSession finish."

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    const v1, 0xdbed

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    .line 193
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$builder:Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->initializeForAppPlatformBind(Lcom/beetalk/sdk/GGLoginSession;)V

    .line 194
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$1;->val$finalLastSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {v1, v2, v3}, Lcom/tencent/gcloud/msdk/login/GarenaLogin$MSDKGarenaSessionCallBack;-><init>(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->GGGetSessionForAppPlatformBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method
