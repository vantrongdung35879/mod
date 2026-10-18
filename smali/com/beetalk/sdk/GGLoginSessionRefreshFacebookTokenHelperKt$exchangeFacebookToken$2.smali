.class final Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;
.super Ljava/lang/Object;
.source "GGLoginSessionRefreshFacebookTokenHelper.kt"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->exchangeFacebookToken(Lcom/facebook/AccessToken;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTaskResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/bolts/Continuation;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/facebook/bolts/Task;",
        "Lcom/beetalk/sdk/AuthClient$Result;",
        "then"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/bolts/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "Lcom/beetalk/sdk/data/AuthToken;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bolts/Task<",
            "Lcom/beetalk/sdk/AuthClient$Result;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {v0, v1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/bolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    .line 90
    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    .line 92
    iget-object p1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    .line 91
    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$exchangeFacebookToken$2;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    .line 96
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 97
    iget v2, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    invoke-static {v2}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v2

    .line 98
    iget-object p1, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorMessage:Ljava/lang/String;

    .line 96
    invoke-direct {v1, v2, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    .line 95
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
