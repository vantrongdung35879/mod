.class public final Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;
.super Ljava/lang/Object;
.source "UserRegistrationController.kt"

# interfaces
.implements Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/registration/UserRegistrationController;->openForm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;",
        "onDialogClose",
        "",
        "onDialogShow",
        "onResult",
        "userResult",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
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
.field final synthetic $callback:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

.field final synthetic $gameRequirementResponse:Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$gameRequirementResponse:Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    iput-object p2, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$callback:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClose()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$callback:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    invoke-interface {v0}, Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;->onDialogClosed()V

    .line 160
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    invoke-static {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->access$release(Lcom/beetalk/sdk/registration/UserRegistrationController;)V

    return-void
.end method

.method public onDialogShow()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$callback:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    invoke-interface {v0}, Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;->onDialogShown()V

    return-void
.end method

.method public onResult(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V
    .locals 4

    const-string/jumbo v0, "userResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/beetalk/sdk/registration/UserRegistrationController;->INSTANCE:Lcom/beetalk/sdk/registration/UserRegistrationController;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/beetalk/sdk/registration/UserRegistrationController;->access$setDialogRef$p(Ljava/lang/ref/WeakReference;)V

    .line 143
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->JAVASCRIPT_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;

    .line 148
    iget-object v1, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$gameRequirementResponse:Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;

    .line 149
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->getHasSkipped()Z

    move-result v2

    .line 150
    invoke-virtual {p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;->getHasIdentified()Z

    move-result p1

    const/4 v3, 0x1

    .line 147
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/beetalk/sdk/registration/model/RegistrationFormResult;-><init>(Lcom/beetalk/sdk/registration/api/response/GameRequirementResponse;ZZZ)V

    .line 146
    invoke-static {v0}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    check-cast p1, Lcom/garena/android/model/Result;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/registration/UserRegistrationController$openForm$2$formDialog$1$1;->$callback:Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/registration/UserRegistrationDialogCallback;->onResult(Lcom/garena/android/model/Result;)V

    return-void
.end method
