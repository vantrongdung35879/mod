.class public final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CreateOpenChatActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;,
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;,
        Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0006\u0010\u0014\u001a\u00020\u000eJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0012\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "currentStep",
        "Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;",
        "lineApiClient",
        "Lcom/linecorp/linesdk/api/LineApiClient;",
        "getLineApiClient",
        "()Lcom/linecorp/linesdk/api/LineApiClient;",
        "lineApiClient$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "addFragment",
        "",
        "step",
        "addToBackStack",
        "",
        "createFragment",
        "Landroidx/fragment/app/Fragment;",
        "goToNextScreen",
        "initViewModel",
        "",
        "launchLineApp",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showAgreementWarningDialog",
        "Companion",
        "CreateOpenChatStep",
        "line-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ARG_CHANNEL_ID:Ljava/lang/String; = "arg_channel_id"

.field public static final ARG_ERROR_RESULT:Ljava/lang/String; = "arg_error_result"

.field public static final ARG_OPEN_CHATROOM_INFO:Ljava/lang/String; = "arg_open_chatroom_info"

.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

.field private final lineApiClient$delegate:Lkotlin/Lazy;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method public static synthetic $r8$lambda$14gtzM9saCLIWyrf1UXD-tYLZpk(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog$lambda$4(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LfGwzTW_JwlaU0dzCHqmtrJPKbk(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel$lambda$2(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWpOS7HiHjaXsngLr1ICX24K99s(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel$lambda$0(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMvqU1p_cDARJeSrXXTxHcbrAVU(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog$lambda$8$lambda$7(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cppaDnRqK3S2oAZFwkSW0L4-Wnc(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog$lambda$8$lambda$5(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkZRu8Ogux8WB0l1iSBSwcMeW8Y(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/LineApiResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel$lambda$1(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/LineApiResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l67bKJLsHAsK_NyejNO-YLob3XE(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog$lambda$8$lambda$6(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wfIsBuVELiC6-tjurZSFirN-qxs(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel$lambda$3(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->lineApiClient$delegate:Lkotlin/Lazy;

    .line 37
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->ChatroomInfo:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    return-void
.end method

.method public static final synthetic access$getLineApiClient(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->getLineApiClient()Lcom/linecorp/linesdk/api/LineApiClient;

    move-result-object p0

    return-object p0
.end method

.method private final addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 119
    :cond_0
    sget p2, Lcom/linecorp/linesdk/R$id;->container:I

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->createFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-result p1

    return p1
.end method

.method static synthetic addFragment$default(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 114
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    move-result p0

    return p0
.end method

.method private final createFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 123
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 125
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;->newInstance()Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 124
    :cond_1
    sget-object p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;->newInstance()Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    :goto_0
    return-object p1
.end method

.method public static final createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final getChatRoomCreationResult(Landroid/content/Intent;)Lcom/linecorp/linesdk/ActionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/linecorp/linesdk/ActionResult<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            "Lcom/linecorp/linesdk/LineApiError;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->Companion:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$Companion;->getChatRoomCreationResult(Landroid/content/Intent;)Lcom/linecorp/linesdk/ActionResult;

    move-result-object p0

    return-object p0
.end method

.method private final getLineApiClient()Lcom/linecorp/linesdk/api/LineApiClient;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->lineApiClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/api/LineApiClient;

    return-object v0
.end method

.method private final initViewModel()V
    .locals 5

    .line 54
    const-string v0, "openchat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 57
    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;

    invoke-direct {v2, v0, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$1;-><init>(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 55
    invoke-static {v1, v2}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const/4 v1, 0x0

    .line 67
    const-string/jumbo v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getOpenChatRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda4;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 75
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCreateChatRoomError()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda5;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 83
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isCreatingChatRoom()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda6;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 87
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getShouldShowAgreementWarning()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda7;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v3, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final initViewModel$lambda$0(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "arg_open_chatroom_info"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method

.method private static final initViewModel$lambda$1(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/LineApiResponse;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "arg_error_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method

.method private static final initViewModel$lambda$2(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget v0, Lcom/linecorp/linesdk/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    const-string v0, "isCreatingChatRoom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private static final initViewModel$lambda$3(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "shouldShowWarning"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->showAgreementWarningDialog()V

    :cond_0
    return-void
.end method

.method private final launchLineApp()V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final showAgreementWarningDialog()V
    .locals 3

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->getLineAppVersion(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    sget v0, Lcom/linecorp/linesdk/R$string;->openchat_not_agree_with_terms:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 102
    sget v1, Lcom/linecorp/linesdk/R$string;->open_line:I

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda1;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    sget v1, Lcom/linecorp/linesdk/R$string;->common_cancel:I

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda2;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 105
    :cond_1
    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$$ExternalSyntheticLambda3;-><init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showAgreementWarningDialog$lambda$4(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method

.method private static final showAgreementWarningDialog$lambda$8$lambda$5(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->launchLineApp()V

    return-void
.end method

.method private static final showAgreementWarningDialog$lambda$8$lambda$6(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method

.method private static final showAgreementWarningDialog$lambda$8$lambda$7(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final goToNextScreen()I
    .locals 4

    .line 51
    sget-object v0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;->UserProfile:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment$default(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;ZILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget p1, Lcom/linecorp/linesdk/R$layout;->activity_create_open_chat:I

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel()V

    .line 48
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->currentStep:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->addFragment(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$CreateOpenChatStep;Z)I

    return-void
.end method
