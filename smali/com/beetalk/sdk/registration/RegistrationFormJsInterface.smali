.class public final Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;
.super Ljava/lang/Object;
.source "RegistrationFormJsInterface.kt"

# interfaces
.implements Lcom/beetalk/sdk/widget/JsInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001B8\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0007J \u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0005H\u0007R)\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u0005X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;",
        "Lcom/beetalk/sdk/widget/JsInterface;",
        "webView",
        "Lcom/beetalk/sdk/widget/InternalWebView;",
        "requirementJson",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
        "Lkotlin/ParameterName;",
        "name",
        "userInteractionRecord",
        "",
        "(Lcom/beetalk/sdk/widget/InternalWebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "getName",
        "()Ljava/lang/String;",
        "getRequirement",
        "messageId",
        "callbackFunctionName",
        "onExit",
        "hasSkipped",
        "",
        "hasIdentified",
        "errorMsg",
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
.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final requirementJson:Ljava/lang/String;

.field private final webView:Lcom/beetalk/sdk/widget/InternalWebView;


# direct methods
.method public static synthetic $r8$lambda$vsT8LN5hcCYn503gO7Z5jyqfaIM(Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->onExit$lambda$0(Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/widget/InternalWebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/widget/InternalWebView;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requirementJson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->webView:Lcom/beetalk/sdk/widget/InternalWebView;

    .line 29
    iput-object p2, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->requirementJson:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->callback:Lkotlin/jvm/functions/Function1;

    .line 33
    const-string p1, "msdkRegistrationForm"

    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->name:Ljava/lang/String;

    return-void
.end method

.method private static final onExit$lambda$0(Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p0, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->webView:Lcom/beetalk/sdk/widget/InternalWebView;

    invoke-virtual {p0}, Lcom/beetalk/sdk/widget/InternalWebView;->closeWindow()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequirement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackFunctionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/beetalk/sdk/widget/JsCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->webView:Lcom/beetalk/sdk/widget/InternalWebView;

    check-cast v1, Landroid/webkit/WebView;

    invoke-direct {v0, v1, p2, p1}, Lcom/beetalk/sdk/widget/JsCallback;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;->requirementJson:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1, p2}, Lcom/beetalk/sdk/widget/JsCallback;->onResult$default(Lcom/beetalk/sdk/widget/JsCallback;Ljava/lang/Object;Landroid/webkit/ValueCallback;ILjava/lang/Object;)V

    return-void
.end method

.method public final onExit(ZZLjava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "errorMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;)V

    .line 49
    sget-object p1, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
