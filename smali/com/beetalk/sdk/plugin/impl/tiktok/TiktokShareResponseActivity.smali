.class public Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;
.super Landroid/app/Activity;
.source "TiktokShareResponseActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;


# instance fields
.field private tikTokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPlugin()Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;
    .locals 2

    .line 41
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "tiktok.share"

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->tikTokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    .line 26
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    return-void
.end method

.method public onErrorIntent(Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->getPlugin()Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->handleSDKError(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->finish()V

    return-void
.end method

.method public onReq(Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;)V
    .locals 0

    return-void
.end method

.method public onResp(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->getPlugin()Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->handleSDKResponse(Lcom/bytedance/sdk/open/tiktok/common/model/BaseResp;)V

    .line 37
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokShareResponseActivity;->finish()V

    return-void
.end method
