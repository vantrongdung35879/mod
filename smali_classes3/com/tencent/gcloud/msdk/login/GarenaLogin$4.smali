.class Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;
.super Ljava/lang/Object;
.source "GarenaLogin.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/login/GarenaLogin;->logout(Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

.field final synthetic val$params:Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/login/GarenaLogin;Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;->this$0:Lcom/tencent/gcloud/msdk/login/GarenaLogin;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;->val$params:Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;->val$params:Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] logout success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x75

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/login/GarenaLogin$4;->val$params:Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/api/MSDKBaseParams;->seqID:Ljava/lang/String;

    const/16 v2, 0x6c

    invoke-static {v2, v0, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
