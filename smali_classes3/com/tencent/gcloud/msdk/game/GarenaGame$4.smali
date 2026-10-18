.class Lcom/tencent/gcloud/msdk/game/GarenaGame$4;
.super Ljava/lang/Object;
.source "GarenaGame.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/game/GarenaGame;->setScore(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
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

    .line 334
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

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
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;)V"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x2c9

    const/16 v2, 0x2bd

    const-string v3, "[ "

    if-eqz v0, :cond_0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] LeaderboardsClient submitScoreImmediate isSuccessful !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 339
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] LeaderboardsClient submitScoreImmediate isCanceled !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 342
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$000(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] LeaderboardsClient submitScoreImmediate failed : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v3, 0x270f

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$4;->val$seqID:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
