.class public Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/framework/view/base/TMEImageView;->setOnTMELongClickListener(Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/framework/view/base/TMEImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 1
    iget-object v1, v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->a(Lcom/tencent/tme/live/framework/view/base/TMEImageView;Z)Z

    iget-object v0, p0, Lcom/tencent/tme/live/framework/view/base/TMEImageView$a;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;

    .line 4
    check-cast v0, Lcom/tencent/tme/live/reward/d;

    .line 5
    iget-object v3, v0, Lcom/tencent/tme/live/reward/d;->b:Lcom/tencent/tme/live/reward/b$c;

    iget-object v3, v3, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    iget-object v4, v0, Lcom/tencent/tme/live/reward/d;->a:Lcom/tencent/tme/live/w0/l$a;

    sget v5, Lcom/tencent/tme/live/reward/b;->k:I

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/tencent/tme/live/biz/R$layout;->tme_reward_tip_layout:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/tencent/tme/live/biz/R$id;->text_tip_name:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcom/tencent/tme/live/biz/R$id;->text_tip_content:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v4, Lcom/tencent/tme/live/w0/l$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v4, Lcom/tencent/tme/live/w0/l$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x32

    if-le v6, v8, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2f

    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/tencent/tme/live/biz/R$dimen;->tme_box_tips_w:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/tencent/tme/live/biz/R$dimen;->tme_box_tips_h:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v4, v4

    float-to-int v6, v7

    const/4 v7, 0x2

    .line 8
    new-array v8, v7, [I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aget v9, v8, v2

    sub-int p1, v4, p1

    div-int/2addr p1, v7

    sub-int/2addr v9, p1

    aget p1, v8, v1

    sub-int/2addr p1, v6

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr p1, v7

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v9, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 9
    iget p1, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    new-instance v8, Lcom/tencent/tme/live/d1/b;

    invoke-direct {v8, v5, v4, v6, v2}, Lcom/tencent/tme/live/d1/b;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v3, Lcom/tencent/tme/live/reward/b;->j:Lcom/tencent/tme/live/d1/b;

    invoke-virtual {v8, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v4, v3, Lcom/tencent/tme/live/reward/b;->j:Lcom/tencent/tme/live/d1/b;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/tencent/tme/live/reward/b;->j:Lcom/tencent/tme/live/d1/b;

    iget-object v3, v3, Lcom/tencent/tme/live/reward/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2, p1, v7}, Lcom/tencent/tme/live/d1/b;->showAtLocation(Landroid/view/View;III)V

    .line 10
    invoke-static {}, Lcom/tencent/tme/live/y0/b;->a()Lcom/tencent/tme/live/y0/b;

    move-result-object p1

    iget-object v0, v0, Lcom/tencent/tme/live/reward/d;->a:Lcom/tencent/tme/live/w0/l$a;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/l$a;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "BoxDetailClick"

    invoke-virtual {p1, v2, v0}, Lcom/tencent/tme/live/y0/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return v1

    :cond_1
    return v2
.end method
