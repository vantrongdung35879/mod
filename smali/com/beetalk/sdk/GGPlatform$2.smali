.class Lcom/beetalk/sdk/GGPlatform$2;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$guestToken:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 666
    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p4, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSessionProcessed$0(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lorg/json/JSONObject;)V
    .locals 3

    .line 689
    invoke-static {p3}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->-$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    .line 695
    :cond_0
    :try_start_0
    const-string v0, "bind successful"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    const-string v0, "result"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    .line 698
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    .line 699
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    .line 700
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    .line 702
    :cond_1
    const-string p3, "bind failed"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->-$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->-$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 4

    .line 669
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 675
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p1

    sget-object p2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p1, p2, :cond_1

    .line 686
    const-string p1, "bindPlatformWhenGuestLogin: login platform success"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    .line 688
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    new-instance v3, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Lcom/beetalk/sdk/GGPlatform$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {p1, p2, v3}, Lcom/beetalk/sdk/networking/service/AuthService;->bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_1

    .line 678
    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/GGPlatform;->-$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    .line 681
    :cond_2
    const-string p1, "bindPlatformWhenGuestLogin: login platform fail with exception"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    .line 711
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/GGPlatform;->-$$Nest$smreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_1
    return-void
.end method
