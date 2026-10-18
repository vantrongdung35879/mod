.class public Lcom/tencent/tme/live/d1/c;
.super Lcom/tencent/tme/live/d1/a;


# instance fields
.field public b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$style;->Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/d1/a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/tencent/tme/live/d1/c;->c:Ljava/lang/String;

    sget p1, Lcom/tencent/tme/live/biz/R$layout;->tme_web_dialog_transparent:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/d1/a;->a(ILandroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget p2, Lcom/tencent/tme/live/biz/R$style;->dialogAnimation:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d1/c;->c()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d1/c;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$color;->tme_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/d1/c;->b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iget-object v1, p0, Lcom/tencent/tme/live/d1/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->load(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public final c()V
    .locals 2

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->webView:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iput-object v1, p0, Lcom/tencent/tme/live/d1/c;->b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    new-instance v1, Lcom/tencent/tme/live/d1/c$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/d1/c$a;-><init>(Lcom/tencent/tme/live/d1/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Lcom/tencent/tme/live/d1/c;->b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->goBack()Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/d1/c;->b:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onStop error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TransparentWebDialog"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
