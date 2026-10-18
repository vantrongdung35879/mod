.class public final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;
.super Landroidx/fragment/app/Fragment;
.source "OpenChatInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000bH\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u0010\u001c\u001a\u00020\u000fH\u0002J\u0008\u0010\u001d\u001a\u00020\u000fH\u0002J\u0008\u0010\u001e\u001a\u00020\u000fH\u0002J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\n \"*\u0004\u0018\u00010!0!H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "binding",
        "Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;",
        "viewModel",
        "Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;",
        "generateTextLengthLimitString",
        "",
        "text",
        "limitResId",
        "",
        "getResourceInt",
        "resId",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setupCategoryLabel",
        "setupDescription",
        "setupName",
        "setupSearchOption",
        "setupToolbar",
        "setupViewModel",
        "setupViews",
        "showCategorySelectionDialog",
        "Landroidx/appcompat/app/AlertDialog;",
        "kotlin.jvm.PlatformType",
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
.field public static final Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;


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

.field private binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

.field private viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method public static synthetic $r8$lambda$1tYLVDP9EjCoUv8MuBDaLzbEMV0(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupSearchOption$lambda$8(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3UYpEESo2ut5MPoOIg-y57JivCk(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel$lambda$0(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELviGL8eLM0CwDL-zb4mKcXtv5M(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupToolbar$lambda$6(Landroid/view/MenuItem;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KKwvRqZXtRPWB0VsDNG2bAB7GxI(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupToolbar$lambda$5(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MDykeKFGIJNmDqrtovRbx2YjoP0(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupCategoryLabel$lambda$9(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T3zhYjDJC0H0AkBp670WvcVx3kA(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel$lambda$1(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$codxZAN2k6E1VVoj-NW0qJVO15Q(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Lcom/linecorp/linesdk/openchat/OpenChatCategory;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel$lambda$3(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Lcom/linecorp/linesdk/openchat/OpenChatCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hf1ADK_Tu22A35NSVo96gdsJy60(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->showCategorySelectionDialog$lambda$10(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBaB4HGqISYpmT3V-4ojdj3WMrc(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupSearchOption$lambda$7(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->Companion:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final generateTextLengthLimitString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 105
    invoke-direct {p0, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getResourceInt(I)I

    move-result p2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getResourceInt(I)I
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method private final setupCategoryLabel()V
    .locals 2

    .line 118
    sget v0, Lcom/linecorp/linesdk/R$id;->categoryLabelTextView:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda8;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupCategoryLabel$lambda$9(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->showCategorySelectionDialog()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private final setupDescription()V
    .locals 3

    .line 130
    sget v0, Lcom/linecorp/linesdk/R$id;->descriptionEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "descriptionEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupDescription$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v2, :cond_0

    const-string/jumbo v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getDescription()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupDescription$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupName()V
    .locals 3

    .line 133
    sget v0, Lcom/linecorp/linesdk/R$id;->nameEditText:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "nameEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupName$1;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v2, :cond_0

    const-string/jumbo v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$setupName$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/openchat/KotlinExtensionsKt;->addAfterTextChangedAction(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setupSearchOption()V
    .locals 2

    .line 110
    sget v0, Lcom/linecorp/linesdk/R$id;->searchIncludedCheckBox:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda3;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    sget v0, Lcom/linecorp/linesdk/R$id;->searchIncludedContainer:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda4;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupSearchOption$lambda$7(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isSearchIncluded()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final setupSearchOption$lambda$8(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget p1, Lcom/linecorp/linesdk/R$id;->searchIncludedCheckBox:I

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method private final setupToolbar()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 84
    sget v1, Lcom/linecorp/linesdk/R$string;->openchat_create_room_title:I

    invoke-virtual {p0, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 86
    sget v1, Lcom/linecorp/linesdk/R$menu;->menu_openchat_info:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 89
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$id;->menu_item_openchat_next:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda5;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 99
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->isValid()Landroidx/lifecycle/LiveData;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda6;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setupToolbar$lambda$5(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/view/MenuItem;)Z
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/linecorp/linesdk/R$id;->menu_item_openchat_next:I

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.linecorp.linesdk.openchat.ui.CreateOpenChatActivity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->goToNextScreen()I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final setupToolbar$lambda$6(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private final setupViewModel()V
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    .line 55
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const-string/jumbo v3, "viewModel"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->setViewModel(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)V

    .line 57
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getChatroomName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 62
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getDescription()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v4, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 67
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCategory()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda2;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setupViewModel$lambda$0(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget v0, Lcom/linecorp/linesdk/R$id;->nameMaxTextView:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/linecorp/linesdk/R$integer;->max_chatroom_name_length:I

    invoke-direct {p0, p1, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->generateTextLengthLimitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupViewModel$lambda$1(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget v0, Lcom/linecorp/linesdk/R$id;->descriptionMaxTextView:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/linecorp/linesdk/R$integer;->max_chatroom_description_length:I

    invoke-direct {p0, p1, v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->generateTextLengthLimitString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupViewModel$lambda$3(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Lcom/linecorp/linesdk/openchat/OpenChatCategory;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->getResourceId()I

    move-result p1

    .line 69
    sget v0, Lcom/linecorp/linesdk/R$id;->categoryLabelTextView:I

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final setupViews()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupToolbar()V

    .line 76
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupName()V

    .line 77
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupDescription()V

    .line 78
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupCategoryLabel()V

    .line 79
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupSearchOption()V

    return-void
.end method

.method private final showCategorySelectionDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 122
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez v1, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCategoryStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment$$ExternalSyntheticLambda7;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static final showCategorySelectionDialog$lambda$10(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    const/4 v0, 0x0

    const-string/jumbo v1, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getSelectedCategory(I)Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    move-result-object p1

    .line 125
    iget-object p0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->viewModel:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->getCategory()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->getView()Landroid/view/View;

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
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViewModel()V

    .line 50
    invoke-direct {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setupViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 40
    invoke-static {p1, p2, p3}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    const/4 p2, 0x0

    .line 41
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 43
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->binding:Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-virtual {p2}, Lcom/linecorp/linesdk/databinding/OpenChatInfoFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
