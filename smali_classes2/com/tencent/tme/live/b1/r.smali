.class public Lcom/tencent/tme/live/b1/r;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/widget/Toast;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/tme/live/v0/j;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object v1, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    .line 3
    :cond_2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/tencent/tme/live/biz/R$string;->chat_background_message:I

    invoke-static {v4, v1}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_live_label_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object p0, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setDuration(I)V

    sget-object p0, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    invoke-virtual {p0, v4, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    sget-object p0, Lcom/tencent/tme/live/b1/r;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
