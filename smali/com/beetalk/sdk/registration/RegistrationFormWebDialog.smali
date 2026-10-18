.class public final Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;
.super Landroid/app/DialogFragment;
.source "RegistrationFormWebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;,
        Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;,
        Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;,
        Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistrationFormWebDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrationFormWebDialog.kt\ncom/beetalk/sdk/registration/RegistrationFormWebDialog\n+ 2 IntentExts.kt\ncom/beetalk/sdk/exts/IntentExtsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n46#2,6:210\n1#3:216\n*S KotlinDebug\n*F\n+ 1 RegistrationFormWebDialog.kt\ncom/beetalk/sdk/registration/RegistrationFormWebDialog\n*L\n114#1:210,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \u001e2\u00020\u0001:\u0004\u001e\u001f !B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\u0008\u0010\u0019\u001a\u00020\nH\u0016J\u0012\u0010\u001a\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u001b\u001a\u00020\nH\u0016J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;",
        "Landroid/app/DialogFragment;",
        "()V",
        "interactionCallback",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;",
        "params",
        "Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;",
        "createWebView",
        "Lcom/beetalk/sdk/widget/InternalWebView;",
        "dismissAllowingStateLoss",
        "",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onDismiss",
        "onStart",
        "setInteractionCallback",
        "listener",
        "Companion",
        "InteractionCallback",
        "Params",
        "UserInteractionResult",
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


# static fields
.field public static final Companion:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;

.field private static final EXTRA_PARAMS:Ljava/lang/String; = "extra_url"

.field private static final EXTRA_RESULT_STATE:Ljava/lang/String; = "extra_result_state"


# instance fields
.field private interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

.field private params:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;


# direct methods
.method public static synthetic $r8$lambda$ZpPCCx4p06ND8w6ryJ726ZkfBjk(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->onCreateDialog$lambda$2$lambda$1(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_sB1UqEC5rswj7wWkG_yg_8OJQ(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->createWebView$lambda$5$lambda$3(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->Companion:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInteractionCallback$p(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    return-object p0
.end method

.method private final createWebView()Lcom/beetalk/sdk/widget/InternalWebView;
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->params:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    const-string v1, "params"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->getRequirementJson()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v3, Lcom/beetalk/sdk/widget/InternalWebView;

    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "getActivity(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/beetalk/sdk/widget/InternalWebView;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4}, Lcom/beetalk/sdk/widget/InternalWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 175
    invoke-virtual {v3, v4}, Lcom/beetalk/sdk/widget/InternalWebView;->setBackgroundColor(I)V

    .line 177
    invoke-virtual {v3}, Lcom/beetalk/sdk/widget/InternalWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->Companion:Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;

    invoke-virtual {v5}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6, v2}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getUserAgent$default(Lcom/beetalk/sdk/networking/SimpleNetworkClient;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v3}, Lcom/beetalk/sdk/widget/InternalWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 180
    move-object v4, v3

    check-cast v4, Landroid/webkit/WebView;

    .line 181
    new-instance v5, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;

    .line 180
    new-instance v6, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;

    invoke-direct {v6, p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$createWebView$1$1;-><init>(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 181
    invoke-direct {v5, v3, v0, v6}, Lcom/beetalk/sdk/registration/RegistrationFormJsInterface;-><init>(Lcom/beetalk/sdk/widget/InternalWebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lcom/beetalk/sdk/widget/JsInterface;

    .line 180
    invoke-static {v4, v5}, Lcom/beetalk/sdk/exts/WebViewExtsKt;->registerJsInterface(Landroid/webkit/WebView;Lcom/beetalk/sdk/widget/JsInterface;)V

    .line 186
    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V

    invoke-virtual {v3, v0}, Lcom/beetalk/sdk/widget/InternalWebView;->setOnWindowCloseListener(Lcom/beetalk/sdk/widget/InternalWebView$OnWindowCloseListener;)Lcom/beetalk/sdk/widget/InternalWebView;

    .line 190
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->params:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beetalk/sdk/widget/InternalWebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v3

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/Helper;->adjustInputResize(Landroid/view/Window;Landroid/view/View;)V

    :cond_2
    return-object v3
.end method

.method private static final createWebView$lambda$5$lambda$3(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda$2$lambda$1(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;->onDialogShow()V

    :cond_0
    const/4 p0, 0x0

    .line 142
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "RegistrationFormDialog show"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    if-eqz v0, :cond_0

    .line 158
    new-instance v7, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    invoke-interface {v0, v7}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;->onResult(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    if-eqz v0, :cond_0

    .line 150
    new-instance v7, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;-><init>(ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    invoke-interface {v0, v7}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;->onResult(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$UserInteractionResult;)V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 113
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "getArguments(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    const-string v3, "extra_url"

    if-lt v0, v1, :cond_0

    .line 211
    const-class v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    invoke-static {p1, v3, v0}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    if-nez v0, :cond_1

    move-object p1, v2

    :cond_1
    check-cast p1, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    check-cast p1, Landroid/os/Parcelable;

    .line 215
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    .line 114
    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->params:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    if-nez p1, :cond_2

    .line 115
    const-string p1, "params"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->isSkippable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->setCancelable(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 130
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->params:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;

    if-nez v1, :cond_0

    const-string v1, "params"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$Params;->isSkippable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/16 v1, 0x11

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x3f19999a    # 0.6f

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 138
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 130
    const-string v0, "apply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 124
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->createWebView()Lcom/beetalk/sdk/widget/InternalWebView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 205
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 165
    iget-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;->onDialogClose()V

    :cond_0
    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    const/4 p1, 0x0

    .line 167
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RegistrationFormDialog dismiss"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 196
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 197
    invoke-virtual {p0}, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public final setInteractionCallback(Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;)Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    move-object v0, p0

    check-cast v0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;

    .line 201
    iput-object p1, p0, Lcom/beetalk/sdk/registration/RegistrationFormWebDialog;->interactionCallback:Lcom/beetalk/sdk/registration/RegistrationFormWebDialog$InteractionCallback;

    return-object p0
.end method
