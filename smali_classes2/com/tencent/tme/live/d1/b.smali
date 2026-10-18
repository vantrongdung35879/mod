.class public Lcom/tencent/tme/live/d1/b;
.super Landroid/widget/PopupWindow;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z


# direct methods
.method public static synthetic $r8$lambda$kEBrA1MAfgFaIeCtr4671IQM-n0(Lcom/tencent/tme/live/d1/b;Landroid/view/View;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/d1/b;->a(Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {p0, p1, p4}, Lcom/tencent/tme/live/d1/b;->a(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;III)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/d1/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1
    const-string p3, "BasePopWindow"

    invoke-static {p3, p1, p2}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/d1/b;->a:Landroid/content/Context;

    :cond_0
    iput-boolean p2, p0, Lcom/tencent/tme/live/d1/b;->b:Z

    return-void
.end method

.method public dismiss()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dismiss excetion "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BasePopWindow"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/tencent/tme/live/d1/b$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/d1/b$$ExternalSyntheticLambda0;-><init>(Lcom/tencent/tme/live/d1/b;Landroid/view/View;III)V

    .line 1
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->d()Lcom/tencent/tme/live/w0/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/tme/live/w0/d;->p:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    iget-boolean p1, p0, Lcom/tencent/tme/live/d1/b;->b:Z

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    const-string p2, "show excetion "

    invoke-static {p2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "BasePopWindow"

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
