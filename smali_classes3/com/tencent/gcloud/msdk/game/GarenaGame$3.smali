.class Lcom/tencent/gcloud/msdk/game/GarenaGame$3;
.super Ljava/lang/Object;
.source "GarenaGame.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/game/GarenaGame;->showLeaderBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/game/GarenaGame;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/tencent/gcloud/msdk/GarenaLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    new-instance v2, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/game/GarenaGame$3$1;-><init>(Lcom/tencent/gcloud/msdk/game/GarenaGame$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const/16 v1, 0x4e22

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    const/16 v2, 0x2bd

    const/16 v3, 0x2c8

    if-eqz v0, :cond_1

    .line 297
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    .line 298
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$000(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x270f

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v4, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$3;->val$seqID:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
