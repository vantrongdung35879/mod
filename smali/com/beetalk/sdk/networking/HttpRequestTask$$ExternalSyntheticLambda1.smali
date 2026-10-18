.class public final synthetic Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

.field public final synthetic f$1:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;->f$1:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda1;->f$1:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->lambda$executeParallel$1$com-beetalk-sdk-networking-HttpRequestTask(Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;Lbolts/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
