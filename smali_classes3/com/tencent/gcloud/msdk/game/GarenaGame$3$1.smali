.class Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;
.super Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;
.source "GarenaGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$3;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/game/GarenaGame$3;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$3;

    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/interfaces/IActivityEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 p3, 0x4e22

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    const/4 p3, 0x2

    const/16 v0, 0x2bd

    const/16 v1, 0x2c8

    if-ne p2, p1, :cond_0

    .line 281
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string p2, "show leaderBoard finish"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v2, p2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$3;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 284
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const-string p2, "show leaderBoard canceled"

    invoke-direct {p1, v1, p3, p3, p2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$3;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show leaderBoard activity result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x270f

    invoke-direct {p1, v1, v3, p2, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 288
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$3;

    iget-object p2, p2, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    .line 290
    :goto_0
    sget-object p1, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    return-void
.end method
