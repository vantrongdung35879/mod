.class Lcom/twitter/sdk/android/core/identity/OAuthActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "OAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/OAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/identity/OAuthActivity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/OAuthActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity$1;->this$0:Lcom/twitter/sdk/android/core/identity/OAuthActivity;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->oAuthController:Lcom/twitter/sdk/android/core/identity/OAuthController;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "Authorization failed, request was canceled."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/twitter/sdk/android/core/identity/OAuthController;->handleAuthError(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method
