.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin;->onAfterAutoLoginFailed(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

.field final synthetic val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GarenaRecall] [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$7;->val$params:Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] onAfterAutoLoginFailed force clearSession done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return-void
.end method
