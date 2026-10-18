.class public Lcom/centauri/oversea/comm/MAlertDialog$Builder;
.super Ljava/lang/Object;
.source "MAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/centauri/oversea/comm/MAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private buttonClearText:Ljava/lang/String;

.field private buttonListener:Landroid/content/DialogInterface$OnClickListener;

.field private buttonText:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private isCancelable:Z

.field private mContext:Landroid/content/Context;

.field private testSubTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/comm/MAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private initDialogButton(Landroid/view/View;Lcom/centauri/oversea/comm/MAlertDialog;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_dialog_sure"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_dialog_clear"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Lcom/centauri/oversea/comm/MAlertDialog$Builder$1;

    invoke-direct {v1, p0, p2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder$1;-><init>(Lcom/centauri/oversea/comm/MAlertDialog$Builder;Lcom/centauri/oversea/comm/MAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonClearText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonClearText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder$2;-><init>(Lcom/centauri/oversea/comm/MAlertDialog$Builder;Lcom/centauri/oversea/comm/MAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private initDialogWindowSize(Lcom/centauri/oversea/comm/MAlertDialog;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 113
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x3f0f5c29    # 0.56f

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 116
    :goto_0
    invoke-virtual {p1}, Lcom/centauri/oversea/comm/MAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 117
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    return-void
.end method

.method private setDialogContent(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_dialog_content"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setHeadView(Landroid/view/View;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_head_test"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_head_release"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 161
    invoke-static {}, Lcom/centauri/oversea/comm/CTITools;->isTestEnv()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_head_test_title"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_head_test_subTitle"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 168
    const-string v1, "Centauri Sandbox!"

    iput-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->title:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v2

    iget-object v2, v2, Lcom/centauri/oversea/comm/GlobalData;->openID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->testSubTitle:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_head_release_title"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    iget-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lcom/centauri/oversea/comm/MAlertDialog;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_abroad_layout_mdialog"

    .line 92
    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/centauri/oversea/comm/MAlertDialog;

    iget-object v2, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "unipay_customDialog"

    invoke-static {v2, v3}, Lcom/centauri/oversea/comm/CTICommMethod;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/centauri/oversea/comm/MAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 95
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/centauri/oversea/comm/MAlertDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->initDialogWindowSize(Lcom/centauri/oversea/comm/MAlertDialog;)V

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->initDialogButton(Landroid/view/View;Lcom/centauri/oversea/comm/MAlertDialog;)V

    .line 99
    invoke-direct {p0, v0}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setHeadView(Landroid/view/View;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setDialogContent(Landroid/view/View;)V

    .line 102
    iget-boolean v2, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->isCancelable:Z

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/comm/MAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/centauri/oversea/comm/MAlertDialog;->setContentView(Landroid/view/View;)V

    return-object v1
.end method

.method public setCancelable(Z)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->isCancelable:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setDialogButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonText:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonText:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonClearText:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->buttonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTestSubTitle(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->testSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
