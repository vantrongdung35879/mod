.class Lcom/beetalk/sdk/GGLoginSession$2;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->inspectToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation<",
        "Lcom/beetalk/sdk/data/AuthToken;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyCallback(Ljava/lang/Exception;)V
    .locals 3

    .line 610
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSession$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/beetalk/sdk/GGLoginSession$2$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession$2;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/Exception;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$notifyCallback$0$com-beetalk-sdk-GGLoginSession$2(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/Exception;)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-interface {p1, v0, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 607
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GGLoginSession$2;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 616
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    .line 618
    instance-of v0, p1, Lcom/garena/pay/android/exception/GGException;

    if-eqz v0, :cond_0

    .line 619
    move-object v0, p1

    check-cast v0, Lcom/garena/pay/android/exception/GGException;

    .line 620
    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    .line 621
    invoke-virtual {v0}, Lcom/garena/pay/android/exception/GGException;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 620
    invoke-virtual {v2, v3, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 623
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession$2;->notifyCallback(Ljava/lang/Exception;)V

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 626
    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 625
    invoke-virtual {v0, v2, v3}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 628
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession$2;->notifyCallback(Ljava/lang/Exception;)V

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    .line 633
    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 632
    invoke-virtual {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 635
    invoke-direct {p0, v1}, Lcom/beetalk/sdk/GGLoginSession$2;->notifyCallback(Ljava/lang/Exception;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->-$$Nest$fputtokenValue(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V

    .line 638
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$2;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatusAndError(Lcom/beetalk/sdk/SessionStatus;I)Lcom/beetalk/sdk/GGLoginSession;

    .line 639
    invoke-direct {p0, v1}, Lcom/beetalk/sdk/GGLoginSession$2;->notifyCallback(Ljava/lang/Exception;)V

    :goto_0
    return-object v1
.end method
