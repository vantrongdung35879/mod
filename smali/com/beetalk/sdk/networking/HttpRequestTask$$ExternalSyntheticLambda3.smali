.class public final synthetic Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->lambda$executeStringSync$3$com-beetalk-sdk-networking-HttpRequestTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
