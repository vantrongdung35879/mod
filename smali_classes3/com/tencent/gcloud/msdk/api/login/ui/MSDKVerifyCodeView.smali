.class public Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;
.super Landroid/widget/RelativeLayout;
.source "MSDKVerifyCodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;
    }
.end annotation


# static fields
.field private static MAX:I = 0x6


# instance fields
.field private editText:Landroid/widget/EditText;

.field private inputCompleteListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

.field private inputContent:Ljava/lang/String;

.field private mVerifyCodeView:Landroid/widget/RelativeLayout;

.field private textViews:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget p2, Lcom/tencent/gcloud/msdk/core/R$layout;->layout_msdk_verify_code:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->mVerifyCodeView:Landroid/widget/RelativeLayout;

    .line 38
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->mVerifyCodeView:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 40
    sget p1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->MAX:I

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    .line 41
    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_0:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    aput-object p3, p1, p2

    .line 42
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_1:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x1

    aput-object p3, p1, v0

    .line 43
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_2:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x2

    aput-object p3, p1, v0

    .line 44
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_3:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-object p3, p1, v0

    .line 45
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_4:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-object p3, p1, v0

    .line 46
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    sget p3, Lcom/tencent/gcloud/msdk/core/R$id;->tv_5:I

    invoke-virtual {p0, p3}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x5

    aput-object p3, p1, v0

    .line 47
    sget p1, Lcom/tencent/gcloud/msdk/core/R$id;->edit_text_view:I

    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->editText:Landroid/widget/EditText;

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 50
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->setEditTextListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->inputContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->inputContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Landroid/widget/EditText;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->inputCompleteListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 18
    sget v0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->MAX:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)[Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->textViews:[Landroid/widget/TextView;

    return-object p0
.end method

.method private setEditTextListener()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$1;-><init>(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public getEditContent()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->inputContent:Ljava/lang/String;

    return-object v0
.end method

.method public setInputCompleteListener(Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputCompleteListener"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView;->inputCompleteListener:Lcom/tencent/gcloud/msdk/api/login/ui/MSDKVerifyCodeView$InputCompleteListener;

    return-void
.end method
