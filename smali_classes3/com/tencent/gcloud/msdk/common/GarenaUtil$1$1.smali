.class Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;
.super Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;
.source "GarenaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->onNotify(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotify(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->onNotify([B)V

    return-void
.end method

.method public onNotify([B)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onNotify(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] bitmap compress onResult, imagePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    iget-object v1, v1, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    iget v0, v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$methodID:I

    iput v0, p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;->methodNameID:I

    .line 185
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1$1;->this$0:Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/common/GarenaUtil$1;->val$callback:Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/gcloud/msdk/core/MSDKInnerCallback;->onResult(Lcom/tencent/gcloud/msdk/api/MSDKRet;)V

    return-void
.end method
