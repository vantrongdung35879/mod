.class public Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBGameMessagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "facebook.game.message"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb54

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;Ljava/lang/Exception;)V

    .line 46
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v0, v1, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    new-instance v0, Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 62
    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$2;

    invoke-direct {v3, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/facebook/gamingservices/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 97
    new-instance v2, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v3, v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->title:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v3, v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->description:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v3, v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->data:Ljava/lang/String;

    .line 100
    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v3, v3, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->uid:Ljava/lang/String;

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Lcom/facebook/gamingservices/GameRequestDialog;->canShow(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v0, v2}, Lcom/facebook/gamingservices/GameRequestDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 109
    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 110
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 111
    const-string v1, "Cannot show game request dialog"

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 52
    :cond_2
    :goto_1
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    .line 54
    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    .line 55
    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    .line 56
    const-string v1, "User id is invalid"

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
