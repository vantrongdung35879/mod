.class public final Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "ProfileInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u0010\u0015\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "dismissKeyboard",
        "",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setupProfileName",
        "setupProfileNameGuide",
        "setupToolbar",
        "setupViews",
        "Companion",
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
.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;


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

.field private binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method public static synthetic $r8$lambda$LUb-ja_iJIFzDy3j-7m8og1UhD8(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupToolbar$lambda$2(Landroid/view/MenuItem;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SfHq9Z16CqplUidJ7n62jCHCv2E(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupToolbar$lambda$1(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getViewModel$p(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    return-object p0
.end method

.method private final dismissKeyboard()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private final setupProfileName()V
    .locals 2

    .line 61
    sget v0, Lcom/linecorp/linesdk/R$id;->displayNameEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "displayNameEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupProfileName$1;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$setupProfileName$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupProfileNameGuide()V
    .locals 6

    .line 57
    sget v0, Lcom/linecorp/linesdk/R$id;->displayNameGuide:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/linecorp/linesdk/R$string;->openchat_create_profile_input_guide:I

    iget-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v3, :cond_0

    const-string/jumbo v3, "viewModel"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v3}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupToolbar()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 67
    sget v1, Lcom/linecorp/linesdk/R$string;->openchat_create_profile_title:I

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 69
    sget v1, Lcom/linecorp/linesdk/R$menu;->menu_profile_info:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 72
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->menu_item_create_profile_done:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 83
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isProfileValid()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment$$ExternalSyntheticLambda1;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setupToolbar$lambda$1(Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;Landroid/view/MenuItem;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/linecorp/linesdk/R$id;->menu_item_create_profile_done:I

    if-ne p1, v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->dismissKeyboard()V

    .line 76
    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatroom()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final setupToolbar$lambda$2(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private final setupViews()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupToolbar()V

    .line 52
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupProfileName()V

    .line 53
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupProfileNameGuide()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    .line 45
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_1

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    .line 47
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setupViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 35
    invoke-static {p1, p2, p3}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    const/4 p2, 0x0

    .line 36
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 38
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-virtual {p2}, Lcom/linecorp/linesdk/databinding/ProfileInfoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/ProfileInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
