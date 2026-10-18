.class public abstract Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "VKBasePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method

.method private getVkAuthManager(Landroid/app/Activity;)Lcom/beetalk/sdk/vk/VKAuthManager;
    .locals 2

    .line 75
    new-instance v0, Lcom/beetalk/sdk/vk/VKAuthManager;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/vk/VKAuthManager;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 76
    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/vk/VKAuthManager;->setCallback(Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-object v0
.end method

.method private onLoginSuccess(Landroid/app/Activity;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 43
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checking vk session"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->data:Ljava/lang/Object;

    .line 49
    instance-of p2, p1, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v0, -0x1

    if-nez p2, :cond_1

    .line 50
    new-instance p2, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {p2}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 52
    iput v0, p2, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 53
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 54
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;

    if-nez p2, :cond_2

    .line 59
    new-instance p2, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {p2}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 61
    iput v0, p2, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 62
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 63
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/vk/api/sdk/VK;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p2}, Lcom/beetalk/sdk/vk/VKAuthManager;->login()V

    goto :goto_0

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->onLoginSuccess(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method protected abstract executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getVkAuthManager$0$com-beetalk-sdk-plugin-impl-vk-VKBasePlugin(Landroid/app/Activity;Lcom/garena/android/model/Result;)V
    .locals 2

    .line 77
    invoke-virtual {p2}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->onLoginSuccess(Landroid/app/Activity;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    .line 83
    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 85
    invoke-virtual {p2}, Lcom/garena/android/model/Result;->getErrorCode()Lcom/garena/pay/android/GGErrorCode;

    move-result-object p2

    .line 86
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    if-eq p2, v1, :cond_1

    .line 87
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 90
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getVkAuthManager(Landroid/app/Activity;)Lcom/beetalk/sdk/vk/VKAuthManager;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->vkAuthManager:Lcom/beetalk/sdk/vk/VKAuthManager;

    return-void
.end method
