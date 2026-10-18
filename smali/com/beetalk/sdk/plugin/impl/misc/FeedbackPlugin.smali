.class public Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "app.feedback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method

.method static synthetic lambda$executeAction$1(Lbolts/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/plugin/PluginResult;

    const-string v1, "app.feedback"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V
    .locals 2

    .line 52
    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->openId:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->appId:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V

    invoke-static {p1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$$ExternalSyntheticLambda1;-><init>()V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 89
    invoke-virtual {p1, p2, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;)V

    .line 60
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    check-cast p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "app.feedback"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb4b

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$executeAction$0$com-beetalk-sdk-plugin-impl-misc-FeedbackPlugin(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->appId:Ljava/lang/String;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->openId:Ljava/lang/String;

    iget-object v2, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AppService;->postFeedbackSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    .line 66
    :try_start_0
    const-string v2, "Response From Server: Feedback %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 68
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 76
    new-instance v1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;I)V

    return-object v1

    .line 82
    :cond_1
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$3;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;)V

    return-object p1
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
