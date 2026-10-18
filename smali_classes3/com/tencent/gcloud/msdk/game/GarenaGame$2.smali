.class Lcom/tencent/gcloud/msdk/game/GarenaGame$2;
.super Ljava/lang/Object;
.source "GarenaGame.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/msdk/game/GarenaGame;->setup(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

.field final synthetic val$seqID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/msdk/game/GarenaGame;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/GamesSignInClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$extra:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

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

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x2bd

    const/16 v3, 0x2c7

    const-string v4, "[ "

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] User is already authenticated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->this$0:Lcom/tencent/gcloud/msdk/game/GarenaGame;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$100(Lcom/tencent/gcloud/msdk/game/GarenaGame;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$extra:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$200(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] User is not authenticated, but should not sign in"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 200
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    .line 201
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] User not authenticated, calling signIn()..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/game/GarenaGame$2$1;-><init>(Lcom/tencent/gcloud/msdk/game/GarenaGame$2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 232
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] isAuthenticated() failed"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    new-instance p1, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    invoke-direct {p1, v3, v1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(II)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/game/GarenaGame;->access$000(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/tencent/gcloud/msdk/api/MSDKRet;

    const/16 v1, 0x270f

    const/4 v4, -0x1

    invoke-direct {v0, v3, v1, v4, p1}, Lcom/tencent/gcloud/msdk/api/MSDKRet;-><init>(IIILjava/lang/String;)V

    move-object p1, v0

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/game/GarenaGame$2;->val$seqID:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->onPluginRetCallback(ILcom/tencent/gcloud/msdk/api/MSDKRet;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
