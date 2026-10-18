.class Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;
.super Ljava/lang/Object;
.source "GarenaGame.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/game/GarenaGame$2;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/16 v1, 0x2bd

    const/4 v2, 0x2

    const/16 v3, 0x2c7

    const-string v4, "[ "

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v5, v5, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] AuthenticationResult.isAuthenticated() = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] signIn() successful"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v3, v1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$100(Lcom/tencent/gcloud/msdk/game/GarenaGame;Ljava/lang/String;II)V

    return-void

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] signIn() returned success but user not authenticated (user may have dismissed the dialog)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 217
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] signIn() task canceled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 221
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v2}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$000(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v2, v2, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] signIn() failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v2, 0x270f

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v0

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;->this$1:Lcom/tencent/gcloud/msdk/game/GarenaGame$2;

    iget-object v0, v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    return-void
.end method
