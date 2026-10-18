.class public final Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;
.super Ljava/lang/Object;
.source "GGLoginSessionRefreshFacebookTokenHelper.kt"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt;->performFacebookTokenRefresh()Lcom/facebook/bolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1",
        "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;",
        "OnTokenRefreshFailed",
        "",
        "exception",
        "Lcom/facebook/FacebookException;",
        "OnTokenRefreshed",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "sdk_release"
    }
    k = 0x1
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
            "Lcom/facebook/AccessToken;",
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
            "Lcom/facebook/AccessToken;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "facebook token refresh failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    .line 58
    new-instance v1, Lcom/garena/pay/android/exception/GGException;

    .line 59
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const-string p1, ""

    .line 58
    :cond_2
    invoke-direct {v1, v2, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Exception;

    .line 57
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    return-void
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 3

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "facebook token refreshed"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    .line 42
    new-instance v0, Lcom/garena/pay/android/exception/GGException;

    .line 43
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    const-string v2, "AccessToken is null"

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/GGException;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    .line 41
    invoke-virtual {p1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSessionRefreshFacebookTokenHelperKt$performFacebookTokenRefresh$1;->$taskCompletion:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
