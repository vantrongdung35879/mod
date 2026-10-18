.class public Lcom/tencent/tme/live/d1/d;
.super Lcom/tencent/tme/live/d1/a;


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/tencent/tme/live/biz/R$style;->Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/d1/a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/tencent/tme/live/d1/d;->d:Ljava/lang/String;

    sget p1, Lcom/tencent/tme/live/biz/R$layout;->tme_web_dialog:I

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

    invoke-virtual {p0}, Lcom/tencent/tme/live/d1/d;->c()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/d1/d;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/d1/d;->c:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iget-object v1, p0, Lcom/tencent/tme/live/d1/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tme/live/d1/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->load(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method public final c()V
    .locals 3

    sget v0, Lcom/tencent/tme/live/biz/R$id;->txt_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tme/live/d1/d;->b:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->icon_back:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$id;->webView:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iput-object v1, p0, Lcom/tencent/tme/live/d1/d;->c:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    new-instance v1, Lcom/tencent/tme/live/d1/d$a;

    invoke-direct {v1, p0}, Lcom/tencent/tme/live/d1/d$a;-><init>(Lcom/tencent/tme/live/d1/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/tencent/tme/live/v0/f;->f:Lcom/tencent/tme/live/l2/b;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v1, v0, Lcom/tencent/tme/live/l2/b;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/l2/b;->a:I

    .line 3
    sget v1, Lcom/tencent/tme/live/biz/R$id;->titlebar:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    iget-object v0, p0, Lcom/tencent/tme/live/d1/d;->c:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->goBack()Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/d1/d;->c:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

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

    const-string v2, "NativeH5Dialog"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
