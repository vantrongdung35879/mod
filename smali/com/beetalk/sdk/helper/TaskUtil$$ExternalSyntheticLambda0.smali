.class public final synthetic Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lbolts/Task;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGPlatform$Callback;

.field public final synthetic f$2:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$0:Lbolts/Task;

    iput-object p2, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGPlatform$Callback;

    iput-object p3, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$0:Lbolts/Task;

    iget-object v1, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGPlatform$Callback;

    iget-object v2, p0, Lcom/beetalk/sdk/helper/TaskUtil$$ExternalSyntheticLambda0;->f$2:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    invoke-static {v0, v1, v2, p1}, Lcom/beetalk/sdk/helper/TaskUtil;->lambda$awaitAndNotifyCallback$0(Lbolts/Task;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;Lbolts/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
