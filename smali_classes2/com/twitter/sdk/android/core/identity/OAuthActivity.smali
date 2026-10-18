.class public Lcom/twitter/sdk/android/core/identity/OAuthActivity;
.super Landroidx/activity/ComponentActivity;
.source "OAuthActivity.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;


# static fields
.field static final EXTRA_AUTH_CONFIG:Ljava/lang/String; = "auth_config"

.field private static final STATE_PROGRESS:Ljava/lang/String; = "progress"


# instance fields
.field oAuthController:Lcom/twitter/sdk/android/core/identity/OAuthController;

.field private spinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILandroid/content/Intent;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 54
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/garena/msdk/R$layout;->tw__activity_oauth:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->setContentView(I)V

    .line 57
    sget v0, Lcom/garena/msdk/R$id;->tw__spinner:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->spinner:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 61
    const-string v2, "progress"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->spinner:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object p1

    .line 68
    new-instance v4, Lcom/beetalk/sdk/helper/CustomTabsManager;

    invoke-direct {v4, p0}, Lcom/beetalk/sdk/helper/CustomTabsManager;-><init>(Landroid/app/Activity;)V

    .line 69
    new-instance v0, Lcom/twitter/sdk/android/core/identity/OAuthController;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "auth_config"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    new-instance v6, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    new-instance v2, Lcom/twitter/sdk/android/core/internal/TwitterApi;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/TwitterApi;-><init>()V

    invoke-direct {v6, p1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;-><init>(Lcom/twitter/sdk/android/core/TwitterCore;Lcom/twitter/sdk/android/core/internal/TwitterApi;)V

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/sdk/android/core/identity/OAuthController;-><init>(Landroid/widget/ProgressBar;Lcom/beetalk/sdk/helper/CustomTabsManager;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/OAuthController$Listener;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->oAuthController:Lcom/twitter/sdk/android/core/identity/OAuthController;

    .line 71
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/OAuthController;->startAuth()V

    .line 73
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/twitter/sdk/android/core/identity/OAuthActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/core/identity/OAuthActivity$1;-><init>(Lcom/twitter/sdk/android/core/identity/OAuthActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "progress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
