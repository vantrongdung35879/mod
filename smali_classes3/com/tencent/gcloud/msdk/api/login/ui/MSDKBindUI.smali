.class public Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;
.super Ljava/lang/Object;
.source "MSDKBindUI.java"

# interfaces
.implements Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;


# static fields
.field public static final MSDK_BINDUI_ARABIC_LANGUAGE:Ljava/lang/String; = "ar"

.field public static final MSDK_BIND_UI_CHANNEL:Ljava/lang/String; = "Passport"

.field public static MSDK_BIND_UI_COUNTRY_ANDROID:Ljava/lang/String; = "MSDK_BIND_UI_COUNTRY_ANDROID"

.field public static final MSDK_BIND_UI_COUNT_DOWN_TIME:Ljava/lang/String; = "countDownTime"

.field public static final MSDK_BIND_UI_IS_UE4_ENGINE:Ljava/lang/String; = "isUE4Engine"

.field public static MSDK_BIND_UI_LANGUAGE_ANDROID:Ljava/lang/String; = "MSDK_BIND_UI_LANGUAGE_ANDROID"

.field public static MSDK_BIND_UI_LANG_TYPE_PARAM:Ljava/lang/String; = "MSDK_BIND_UI_LANG_TYPE_PARAM"

.field public static MSDK_BIND_UI_PRIVACY_POLICY_URL:Ljava/lang/String; = "MSDK_BIND_UI_PRIVACY_POLICY_URL"

.field public static MSDK_BIND_UI_TERMS_OF_SERVICES_URL:Ljava/lang/String; = "MSDK_BIND_UI_TERMS_OF_SERVICES_URL"

.field public static MSDK_BIND_UI_VERIFY_CODE_LENGTH:Ljava/lang/String; = "MSDK_BIND_UI_VERIFY_CODE_LENGTH"

.field public static final MSDK_LOGIN_WITH_CODE_TYPE:I = 0x2

.field public static final MSDK_PASSPORT_ACCOUNT_TYPE:I = 0x1


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private isBindUIOpen:Z

.field private isUE4Engine:Z

.field private mActivity:Landroid/app/Activity;

.field private mBackButton:Landroid/widget/RelativeLayout;

.field private mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

.field private mBindUIContainerLayout:Landroid/view/ViewGroup;

.field private mBindUIEnterEmailLayout:Landroid/view/ViewGroup;

.field private mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

.field private mBindUISuccessLayout:Landroid/view/ViewGroup;

.field private mCloseButton:Landroid/widget/RelativeLayout;

.field private mCountDownTime:I

.field private mCurrentView:Landroid/view/ViewGroup;

.field private mEmailAccount:Ljava/lang/String;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailTitleTextView:Landroid/widget/TextView;

.field private mIsAlreadyReceiveEmail:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNoticeTextView:Landroid/widget/TextView;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPolicyCheckBox:Landroid/widget/CheckBox;

.field private mSameEmail:Z

.field private mSeqId:Ljava/lang/String;

.field private mSuccessTextView:Landroid/widget/TextView;

.field private mTermsAndPolicyTextView:Landroid/widget/TextView;

.field private mTermsPolicyCheckGroup:Landroid/view/ViewGroup;

.field private privacyUrl:Ljava/lang/String;

.field private shouldShowCheckboxGroup:Z

.field private termsUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->termsUrl:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->privacyUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSeqId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->destroyBindUIView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSameEmail:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/util/Locale;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->shouldShowCheckboxGroup:Z

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/CheckBox;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mPolicyCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/Button;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->termsUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->privacyUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterEmailLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBackButton:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private destroyBindUIView()V
    .locals 5

    .line 564
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 565
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 567
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    const-string v2, "destroyBindUIView - Unity implementation"

    const-string v3, "destroyBindUIView - UE4 implementation"

    if-nez v0, :cond_2

    .line 573
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 575
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCurrentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCurrentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;->dismiss()V

    .line 589
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 591
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 592
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCurrentView:Landroid/view/ViewGroup;

    .line 593
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mParentLayout:Landroid/view/ViewGroup;

    goto :goto_1

    .line 596
    :cond_4
    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 597
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    .line 600
    :goto_1
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    if-eqz v0, :cond_5

    .line 601
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->destroyView()V

    .line 603
    :cond_5
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCloseButton:Landroid/widget/RelativeLayout;

    .line 604
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    .line 605
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNextButton:Landroid/widget/Button;

    .line 606
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    .line 607
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    .line 608
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    .line 609
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSuccessTextView:Landroid/widget/TextView;

    .line 610
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUISuccessLayout:Landroid/view/ViewGroup;

    .line 611
    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailTitleTextView:Landroid/widget/TextView;

    .line 612
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSameEmail:Z

    .line 613
    iput-boolean v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    return-void
.end method

.method private initBindUIView()V
    .locals 10

    .line 151
    const-string v0, "initLoginUIView invoked"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform;->getActivityCur()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    .line 155
    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    const-string v2, "initBindUIView - Unity implementation"

    const-string v3, "initBindUIView - UE4 implementation"

    if-nez v1, :cond_0

    .line 157
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 159
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mParentLayout:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mParentLayout:Landroid/view/ViewGroup;

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 167
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    const-string v5, "ar"

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v4, :cond_2

    .line 168
    sget v4, Lcom/tencent/gcloud/msdk/core/R$layout;->msdk_bind_ui_container:I

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    .line 170
    sget-object v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_LANGUAGE_ANDROID:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 178
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    if-nez v1, :cond_3

    .line 180
    invoke-static {v2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCurrentView:Landroid/view/ViewGroup;

    .line 182
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-static {v3}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/tencent/gcloud/msdk/core/R$style;->DialogTransparentFullScreen:I

    invoke-direct {v1, v2, v3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    .line 188
    invoke-virtual {v1, v7}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;->setCancelable(Z)V

    .line 189
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;->setContentView(Landroid/view/View;)V

    .line 190
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;->show()V

    .line 191
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerDialog:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;

    invoke-virtual {v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_email_title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailTitleTextView:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_enter_your_email:I

    invoke-static {v1, v2, v3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_email_input_edittext:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    .line 200
    sget-object v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_LANGUAGE_ANDROID:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 207
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$1;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$1;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_email_notice_textview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v4, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_please_enter_valid_email:I

    invoke-static {v1, v2, v4}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->layout_msdk_bind_ui_enter_email:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterEmailLayout:Landroid/view/ViewGroup;

    .line 252
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bindui_success_layout:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUISuccessLayout:Landroid/view/ViewGroup;

    .line 253
    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_success_textview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSuccessTextView:Landroid/widget/TextView;

    .line 254
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v4, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_you_are_all_set:I

    invoke-static {v1, v2, v4}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSuccessTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_email_check_group:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mTermsPolicyCheckGroup:Landroid/view/ViewGroup;

    .line 260
    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->shouldShowCheckboxGroup:Z

    if-eqz v1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_terms_and_policy_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mTermsAndPolicyTextView:Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_and:I

    invoke-static {v1, v2, v3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v4, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_terms_of_service:I

    invoke-static {v2, v3, v4}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v2

    .line 265
    iget-object v3, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v5, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_privacy_policy:I

    invoke-static {v3, v4, v5}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 267
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v7

    aput-object v3, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/tencent/gcloud/msdk/core/R$color;->msdk_clickable_text_color_2d98d3:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 272
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$2;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    .line 286
    new-instance v7, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;

    invoke-direct {v7, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$3;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    const/16 v9, 0x21

    invoke-virtual {v6, v0, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 298
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v6, v7, v5, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 302
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$4;

    invoke-direct {v0, p0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$4;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;I)V

    .line 307
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    .line 302
    invoke-virtual {v6, v0, v4, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 309
    new-instance v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;

    invoke-direct {v0, p0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$5;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;I)V

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    .line 309
    invoke-virtual {v6, v0, v5, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 316
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mTermsAndPolicyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mTermsAndPolicyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 319
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_send_email_notice_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mPolicyCheckBox:Landroid/widget/CheckBox;

    .line 320
    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$6;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 332
    :cond_5
    const-string v0, "MSDK_BIND_UI_TERMS_OF_SERVICES_URL and MSDK_BIND_UI_PRIVACY_POLICY_URL not config, will not show terms and privacy"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mTermsPolicyCheckGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 336
    :goto_2
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBackButton:Landroid/widget/RelativeLayout;

    .line 337
    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$7;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_close:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCloseButton:Landroid/widget/RelativeLayout;

    .line 349
    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$8;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_email_next_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNextButton:Landroid/widget/Button;

    .line 364
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v2, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_button_next:I

    invoke-static {v0, v1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNextButton:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$9;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public checkHandleAccountRetInBindUI(Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountRet",
            "seqId"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] checkHandleAccountRetInBindUI invoked, accountRet: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 510
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] bind ui is not opened, no need to hanle in ui"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return v2

    .line 515
    :cond_0
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;->methodNameID:I

    const/16 v3, 0x525

    const/4 v4, 0x1

    if-ne v0, v3, :cond_9

    .line 516
    iget v0, p1, Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;->retCode:I

    if-nez v0, :cond_2

    .line 518
    iget p1, p1, Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;->isReceiveEmail:I

    if-ne p1, v4, :cond_1

    .line 519
    iput-boolean v4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mIsAlreadyReceiveEmail:Z

    goto :goto_0

    .line 521
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mIsAlreadyReceiveEmail:Z

    goto :goto_0

    .line 524
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "check register status error: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;->retCode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/account/MSDKAccountRet;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 525
    iput-boolean v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mIsAlreadyReceiveEmail:Z

    .line 528
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] send verify code success, go to enter verify code page"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    const/4 p2, 0x4

    if-eqz p1, :cond_3

    .line 530
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    :cond_3
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBackButton:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 533
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    :cond_4
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterEmailLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 536
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 538
    :cond_5
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    if-nez p1, :cond_7

    .line 539
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIContainerLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/tencent/gcloud/msdk/core/R$id;->layout_msdk_bind_ui_enter_verify_code:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/view/ViewStub;

    .line 540
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getTimerState()I

    move-result p1

    .line 541
    iget v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCountDownTime:I

    .line 542
    sget v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->RUNNING:I

    if-ne p1, v1, :cond_6

    .line 543
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getTimerRemain()I

    move-result p1

    move v8, p1

    goto :goto_1

    :cond_6
    move v8, v0

    .line 545
    :goto_1
    new-instance p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    iget-object v6, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;-><init>(Landroid/app/Activity;Landroid/view/ViewStub;ILjava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    .line 547
    :cond_7
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setEmailAccount(Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setVisibility(I)V

    .line 549
    iget-boolean p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mIsAlreadyReceiveEmail:Z

    if-eqz p1, :cond_8

    .line 550
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setReceiveEmailGroupVisible(I)V

    goto :goto_2

    .line 552
    :cond_8
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setReceiveEmailGroupVisible(I)V

    .line 554
    :goto_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;)V

    :cond_9
    return v4
.end method

.method public checkHandleInBindUI(Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loginRet",
            "seqId"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] checkHandleInBindUI invoked, loginRet: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isBindUIOpen:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 406
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] bind ui is not opened, no need to hanle in ui"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    return v2

    .line 409
    :cond_0
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->methodNameID:I

    const/16 v0, 0x71

    const/4 v3, 0x1

    if-ne p2, v0, :cond_7

    .line 410
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retCode:I

    if-eqz p2, :cond_2

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bind failed with msg "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->thirdCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->thirdMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 413
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->thirdCode:I

    const/16 v0, 0x842

    if-ne p2, v0, :cond_1

    .line 415
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v0, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_enter_valid_verification_code:I

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p2, p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setVerifyCodeNoticeText(Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->showVerifyCodeNotice(I)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retMsg:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setVerifyCodeNoticeText(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    invoke-virtual {p1, v2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->showVerifyCodeNotice(I)V

    :goto_0
    return v3

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBackButton:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    if-eqz p1, :cond_3

    .line 426
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    :cond_3
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCloseButton:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 429
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    :cond_4
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUISuccessLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 432
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 434
    :cond_5
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mBindUIEnterVerifyCodeLayout:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;

    if-eqz p1, :cond_6

    const/4 p2, 0x4

    .line 435
    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->showEnterVerifyCodeHome(I)V

    .line 437
    :cond_6
    new-instance p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;

    const-wide/16 v5, 0xbb8

    const-wide/16 v7, 0x3e8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;JJ)V

    .line 448
    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI$10;->start()Landroid/os/CountDownTimer;

    return v2

    .line 451
    :cond_7
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->methodNameID:I

    const/16 v0, 0x80

    if-ne p2, v0, :cond_c

    .line 452
    iget p2, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retCode:I

    if-nez p2, :cond_b

    .line 456
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->extraJson:Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    const-string v0, "canBind"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    :try_start_1
    const-string v4, "isRegister"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 v0, 0x0

    .line 460
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->seqID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] parse json error: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->e(Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_a

    .line 465
    const-string p1, "account not exists, continue send verify code and get receive email tag"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 466
    sget-object p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_LANG_TYPE_PARAM:Ljava/lang/String;

    const-string p2, "en_US"

    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    const-string v8, ""

    const-string v9, ""

    const-string v4, "Passport"

    const/4 v6, 0x1

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Account;->getReceiveEmail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getTimerState()I

    move-result p2

    .line 471
    iget-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSameEmail:Z

    if-eqz v0, :cond_8

    .line 473
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->STOP:I

    if-ne p2, v0, :cond_c

    .line 475
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    const-string v4, "Passport"

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v8, p1

    invoke-static/range {v4 .. v10}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Account;->requestVerifyCode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->startTimer()V

    goto :goto_3

    .line 480
    :cond_8
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->RUNNING:I

    if-ne p2, v0, :cond_9

    .line 481
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->cancelTimer()V

    .line 484
    :cond_9
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mEmailAccount:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    const-string v4, "Passport"

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object v8, p1

    invoke-static/range {v4 .. v10}, Lcom/tencent/gcloud/msdk/api/MSDKPlatform$Account;->requestVerifyCode(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->startTimer()V

    goto :goto_3

    .line 491
    :cond_a
    const-string p1, "account exists and registered"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    sget v0, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_account_exists:I

    invoke-static {p1, p2, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 494
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 498
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "check register status error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retMsg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 499
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginRet;->retMsg:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mNoticeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_3
    return v3
.end method

.method public onConfirmButtonClick()V
    .locals 0

    return-void
.end method

.method public openBindUI(Ljava/lang/String;Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seqId",
            "params"
        }
    .end annotation

    .line 110
    const-string v0, "openBindUI invoked"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mSeqId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->isUE4Engine:Z

    const/16 v1, 0x3c

    .line 114
    iput v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCountDownTime:I

    if-eqz p2, :cond_0

    .line 115
    iget-object v1, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->extraJson:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    iget-object p2, p2, Lcom/tencent/gcloud/msdk/api/login/MSDKLoginParams;->extraJson:Ljava/lang/String;

    const-string v1, "countDownTime"

    invoke-static {p2, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getJsonInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 119
    iput p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCountDownTime:I

    .line 122
    :cond_0
    iget p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mCountDownTime:I

    invoke-static {p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->setCountDownTime(I)V

    .line 123
    sget-object p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_TERMS_OF_SERVICES_URL:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->termsUrl:Ljava/lang/String;

    .line 124
    sget-object p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_PRIVACY_POLICY_URL:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->privacyUrl:Ljava/lang/String;

    .line 125
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->shouldShowCheckboxGroup:Z

    .line 126
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->termsUrl:Ljava/lang/String;

    const-string v0, "NONE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->termsUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 127
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->shouldShowCheckboxGroup:Z

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->privacyUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->privacyUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 130
    :cond_3
    iput-boolean v2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->shouldShowCheckboxGroup:Z

    .line 133
    :cond_4
    sget-object p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_LANGUAGE_ANDROID:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    sget-object v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->MSDK_BIND_UI_COUNTRY_ANDROID:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/gcloud/msdk/tools/IT;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]   is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/tools/MSDKLog;->d(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 138
    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    goto :goto_0

    .line 140
    :cond_5
    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    goto :goto_0

    .line 143
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->currentLocale:Ljava/util/Locale;

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->initBindUIView()V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUI;->mActivity:Landroid/app/Activity;

    return-void
.end method
