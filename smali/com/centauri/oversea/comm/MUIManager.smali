.class public Lcom/centauri/oversea/comm/MUIManager;
.super Ljava/lang/Object;
.source "MUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/comm/MUIManager$MNotifier;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MUIManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    .line 27
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    .line 28
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 31
    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/centauri/oversea/comm/MUIManager;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dismissWaitDialog()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 97
    const-string v0, "MUIManager"

    const-string v1, "dismissWaitDialog()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isShowLoading()Z
    .locals 1

    .line 260
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->showLoading()Z

    move-result v0

    return v0
.end method

.method public isShowPayResult()Z
    .locals 1

    .line 253
    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->showPayResult()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MAlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    .line 240
    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/MAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    invoke-virtual {v1}, Lcom/centauri/oversea/comm/MAlertDialog;->dismiss()V

    .line 243
    :cond_1
    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    .line 245
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/MUIManager;->dismissWaitDialog()V

    return-void
.end method

.method public showErrorMsg(Ljava/lang/String;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/MUIManager;->isShowPayResult()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 158
    invoke-interface {p2}, Lcom/centauri/oversea/comm/MUIManager$MNotifier;->callback()V

    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 167
    :cond_2
    new-instance v0, Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "error"

    .line 168
    invoke-virtual {v0, v1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setContent(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, v0}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setCancelable(Z)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "unipay_sure"

    .line 171
    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/centauri/oversea/comm/MUIManager$4;

    invoke-direct {v1, p0, p2}, Lcom/centauri/oversea/comm/MUIManager$4;-><init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    invoke-virtual {p1, v0, v1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setDialogButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->create()Lcom/centauri/oversea/comm/MAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz p1, :cond_3

    .line 184
    new-instance v0, Lcom/centauri/oversea/comm/MUIManager$5;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/comm/MUIManager$5;-><init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/comm/MAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 195
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mErrorMsgDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/MAlertDialog;->show()V

    .line 196
    const-string p1, "MUIManager"

    const-string/jumbo p2, "showErrorMsg()"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public showLoading()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/MUIManager;->isShowLoading()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/centauri/oversea/comm/CTIProgressDialog;

    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/centauri/oversea/comm/CTIProgressDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 50
    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_waiting"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 52
    const-string v0, "MUIManager"

    const-string/jumbo v1, "showLoading()"

    invoke-static {v0, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showLoading(Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/MUIManager;->isShowLoading()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/centauri/oversea/comm/CTIProgressDialog;

    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/centauri/oversea/comm/CTIProgressDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 72
    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_waiting"

    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/centauri/oversea/comm/MUIManager$1;

    invoke-direct {v1, p0, p1}, Lcom/centauri/oversea/comm/MUIManager$1;-><init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 84
    const-string p1, "MUIManager"

    const-string/jumbo v0, "showWaitDialog()"

    invoke-static {p1, v0}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showSandboxDialog(Lcom/centauri/oversea/comm/MUIManager$MNotifier;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/MAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    const-string v0, "com.centauri.debugview.View.GoogleBillingActivity"

    invoke-static {v0}, Lcom/centauri/oversea/comm/CTICommMethod;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    iget-object v2, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "unipay_hints"

    .line 111
    invoke-static {v2, v3}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "unipay_no_charge_hints"

    .line 112
    invoke-static {v2, v3}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setContent(Ljava/lang/String;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setCancelable(Z)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "unipay_sure"

    .line 114
    invoke-static {v3, v4}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "unipay_debug"

    invoke-static {v4, v5}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/centauri/oversea/comm/MUIManager$2;

    invoke-direct {v5, p0, p1, v0}, Lcom/centauri/oversea/comm/MUIManager$2;-><init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->setDialogButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/centauri/oversea/comm/MAlertDialog$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/centauri/oversea/comm/MAlertDialog$Builder;->create()Lcom/centauri/oversea/comm/MAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1, v2}, Lcom/centauri/oversea/comm/MAlertDialog;->setCancelable(Z)V

    .line 133
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    new-instance v0, Lcom/centauri/oversea/comm/MUIManager$3;

    invoke-direct {v0, p0, p2}, Lcom/centauri/oversea/comm/MUIManager$3;-><init>(Lcom/centauri/oversea/comm/MUIManager;Lcom/centauri/oversea/comm/MUIManager$MNotifier;)V

    invoke-virtual {p1, v0}, Lcom/centauri/oversea/comm/MAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 146
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mTestEnvDialog:Lcom/centauri/oversea/comm/MAlertDialog;

    invoke-virtual {p1}, Lcom/centauri/oversea/comm/MAlertDialog;->show()V

    .line 147
    const-string p1, "MUIManager"

    const-string/jumbo p2, "showSandboxDialog()"

    invoke-static {p1, p2}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public successToast(Ljava/lang/String;)V
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/MUIManager;->isShowPayResult()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "unipay_abroad_tips_suc"

    .line 212
    invoke-static {v1, v2}, Lcom/centauri/oversea/comm/CTICommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "unipay_id_succnum"

    invoke-static {v0, v1}, Lcom/centauri/oversea/comm/CTIUICommMethod;->findViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    const-string/jumbo v2, "unipay_id_name"

    invoke-static {v0, v2}, Lcom/centauri/oversea/comm/CTIUICommMethod;->findViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 216
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x4

    .line 217
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :goto_1
    iget-object p1, p0, Lcom/centauri/oversea/comm/MUIManager;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x17

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 225
    invoke-virtual {p1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
