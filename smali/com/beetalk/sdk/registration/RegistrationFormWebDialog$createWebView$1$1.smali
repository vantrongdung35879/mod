.class final Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RegistrationFormWebDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->createWebView()Lcom/beetalk/sdk/widget/InternalWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
        "invoke"
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
.field final synthetic this$0:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;->this$0:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 180
    check-cast p1, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;->invoke(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;->this$0:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;

    invoke-static {v0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->access$getInteractionCallback$p(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;->onResult(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    :cond_0
    return-void
.end method
