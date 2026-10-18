.class public Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;
.super Ljava/lang/Object;
.source "MSDKBindUIEnterVerifyCodeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;
    }
.end annotation


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private isInputCompleted:Z

.field private listener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mBindEnterVerifyCodeHomeLayout:Landroid/widget/RelativeLayout;

.field private mConfirmButton:Landroid/widget/Button;

.field private mCountDownTime:I

.field private mEmailAccount:Ljava/lang/String;

.field private mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

.field private mEnterVerifyCodeTitleTextView:Landroid/widget/TextView;

.field private mEnterVerifyCodeViewStub:Landroid/view/ViewStub;

.field private mEnteredVerifyCode:Ljava/lang/String;

.field private mNotGetCodeTextView:Landroid/widget/TextView;

.field private mReceiveEmailCheckBoxGroup:Landroid/view/ViewGroup;

.field private mReceiveEmailChekbox:Landroid/widget/CheckBox;

.field private mReceiveEmailTextView:Landroid/widget/TextView;

.field private mResendTextView:Landroid/widget/TextView;

.field private mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

.field private mVerifyCodeNoticeTextView:Landroid/widget/TextView;

.field private mVerifyCodeSentTextView:Landroid/widget/TextView;

.field private mVerifyCodeView:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewStub;ILjava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewStub",
            "countDownTime",
            "emailAccount",
            "locale"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnteredVerifyCode:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    .line 54
    iput p3, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mCountDownTime:I

    .line 55
    iput-object p4, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    .line 58
    iput-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeViewStub:Landroid/view/ViewStub;

    .line 59
    sget p1, Lcom/tencent/gcloud/msdk/core/R$layout;->layout_msdk_bind_ui_enter_verifycode:I

    invoke-virtual {p2, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 60
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeViewStub:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    .line 62
    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_receive_email_notice_checkbox:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailChekbox:Landroid/widget/CheckBox;

    .line 64
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_verification_sent_notification:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeSentTextView:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_enter_verifycode_title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeTitleTextView:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_verify_code_notice:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeNoticeTextView:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_not_get_code_textview:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mNotGetCodeTextView:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_receive_email:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailTextView:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_enter_verify_code_home_layout:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mBindEnterVerifyCodeHomeLayout:Landroid/widget/RelativeLayout;

    .line 76
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_receive_email_check_group:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailCheckBoxGroup:Landroid/view/ViewGroup;

    .line 78
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->setEmailAccount(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_enter_verification_code:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_enter_valid_verification_code:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeNoticeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_not_get_verification_code:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mNotGetCodeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_receive_email_notice:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_verify_code_layout:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeView:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    .line 95
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$1;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$1;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)V

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->setInputCompleteListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;)V

    .line 106
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_ui_email_confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mConfirmButton:Landroid/widget/Button;

    .line 107
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_button_confirm:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mConfirmButton:Landroid/widget/Button;

    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$2;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$2;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    sget p2, Lcom/tencent/gcloud/msdk/core/R$id;->msdk_bind_resend:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mResendTextView:Landroid/widget/TextView;

    .line 155
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_resend:I

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mResendTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mResendTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$3;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->getInstance()Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    .line 174
    new-instance p2, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;

    invoke-direct {p2, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$4;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)V

    invoke-virtual {p1, p2}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->setMSDKCountDownTimerListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer$MSDKCountDownTimerListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnteredVerifyCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnteredVerifyCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeView:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/CheckBox;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailChekbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->listener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mResendTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;)Ljava/util/Locale;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    return-object p0
.end method

.method private cancelTimer()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;->cancelTimer()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mTimer:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKCountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyView()V
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->cancelTimer()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    .line 229
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeTitleTextView:Landroid/widget/TextView;

    .line 230
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeViewStub:Landroid/view/ViewStub;

    .line 231
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    .line 232
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailChekbox:Landroid/widget/CheckBox;

    .line 233
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mNotGetCodeTextView:Landroid/widget/TextView;

    .line 234
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailCheckBoxGroup:Landroid/view/ViewGroup;

    .line 235
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeSentTextView:Landroid/widget/TextView;

    .line 236
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mConfirmButton:Landroid/widget/Button;

    .line 237
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mResendTextView:Landroid/widget/TextView;

    .line 238
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeView:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;

    .line 239
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailTextView:Landroid/widget/TextView;

    .line 240
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mBindEnterVerifyCodeHomeLayout:Landroid/widget/RelativeLayout;

    .line 241
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeNoticeTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setEmailAccount(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emailAccount"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeSentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->currentLocale:Ljava/util/Locale;

    sget v1, Lcom/tencent/gcloud/msdk/core/R$string;->msdk_bind_verification_sent_notification:I

    invoke-static {p1, v0, v1}, Lcom/tencent/gcloud/msdk/api/login/ui/ResourceUtil;->getLocaleStringResource(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/gcloud/msdk/core/R$color;->msdk_clickable_text_color_2d98d3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 252
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 253
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEmailAccount:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 255
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeSentTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->listener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout$OnClickListener;

    return-void
.end method

.method public setReceiveEmailGroupVisible(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mReceiveEmailCheckBoxGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVerifyCodeNoticeText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeNoticeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mEnterVerifyCodeLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showEnterVerifyCodeHome(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mBindEnterVerifyCodeHomeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showVerifyCodeNotice(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKBindUIEnterVerifyCodeLayout;->mVerifyCodeNoticeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
