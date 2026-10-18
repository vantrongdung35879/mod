.class public Lcom/centauri/oversea/comm/CTIProgressDialog;
.super Landroid/app/ProgressDialog;
.source "CTIProgressDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private loadingTxt:Ljava/lang/String;

.field private loading_txt:Landroid/widget/TextView;

.field private mCancelable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 25
    const-string/jumbo v0, "unipay_CustomProgressDialog"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTICommMethod;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loadingTxt:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loading_txt:Landroid/widget/TextView;

    .line 26
    iput-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->context:Landroid/content/Context;

    .line 27
    iput-boolean p2, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->mCancelable:Z

    .line 28
    const-string/jumbo p2, "unipay_waiting"

    invoke-static {p1, p2}, Lcom/centauri/oversea/comm/CTICommMethod;->getStringId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loadingTxt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/centauri/oversea/comm/CTIProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APProgressDialog create failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APProgressDialog"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v0, "unipay_abroad_loadding"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTICommMethod;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/comm/CTIProgressDialog;->setContentView(I)V

    .line 47
    iget-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v0, "unipay_progress"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/comm/CTIProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 49
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x258

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 54
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 56
    iget-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->context:Landroid/content/Context;

    const-string/jumbo v0, "unipay_id_LoadingTxt"

    invoke-static {p1, v0}, Lcom/centauri/oversea/comm/CTICommMethod;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/comm/CTIProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loading_txt:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loadingTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-boolean p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->mCancelable:Z

    invoke-virtual {p0, p1}, Lcom/centauri/oversea/comm/CTIProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/centauri/oversea/comm/CTIProgressDialog;->loadingTxt:Ljava/lang/String;

    return-void
.end method
