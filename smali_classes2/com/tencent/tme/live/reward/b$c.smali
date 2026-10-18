.class public Lcom/tencent/tme/live/reward/b$c;
.super Lcom/tencent/tme/live/c1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/reward/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/b<",
        "Lcom/tencent/tme/live/w0/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/tencent/tme/live/reward/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/reward/b;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    invoke-direct {p0, p2, p3}, Lcom/tencent/tme/live/c1/b;-><init>(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 11

    check-cast p3, Lcom/tencent/tme/live/w0/l$a;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tme_reward_item:I

    iget-object v1, p0, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/reward/b;->e:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$id;->img_box_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    new-instance v1, Lcom/tencent/tme/live/reward/c;

    invoke-direct {v1, p0, p3}, Lcom/tencent/tme/live/reward/c;-><init>(Lcom/tencent/tme/live/reward/b$c;Lcom/tencent/tme/live/w0/l$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tencent/tme/live/reward/d;

    invoke-direct {v1, p0, p3}, Lcom/tencent/tme/live/reward/d;-><init>(Lcom/tencent/tme/live/reward/b$c;Lcom/tencent/tme/live/w0/l$a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/framework/view/base/TMEImageView;->setOnTMELongClickListener(Lcom/tencent/tme/live/framework/view/base/TMEImageView$b;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/reward/b$c;->c:Lcom/tencent/tme/live/reward/b;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget v1, Lcom/tencent/tme/live/biz/R$id;->text_box_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/tencent/tme/live/biz/R$id;->text_time_content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/tencent/tme/live/biz/R$id;->img_box_bg:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v4, Lcom/tencent/tme/live/biz/R$id;->img_box_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v5, Lcom/tencent/tme/live/biz/R$id;->img_box_icon_cover:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p3, Lcom/tencent/tme/live/w0/l$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setUrl(Ljava/lang/String;)V

    .line 6
    iget v4, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    const/16 v6, 0x3c

    if-ge v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "s"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-string v7, "0.0"

    const/16 v8, 0xe10

    if-ge v4, v8, :cond_3

    rem-int/2addr v4, v6

    const-string v8, "min"

    if-lez v4, :cond_2

    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    int-to-float v7, v7

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v7, v9

    float-to-double v9, v7

    invoke-virtual {v4, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    div-int/2addr v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    rem-int/2addr v4, v8

    const-string v6, "h"

    if-lez v4, :cond_4

    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    int-to-float v8, v8

    const/high16 v9, 0x45610000    # 3600.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p3, Lcom/tencent/tme/live/w0/l$a;->d:I

    div-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p3, p3, Lcom/tencent/tme/live/w0/l$a;->c:I

    const/4 v4, 0x1

    if-ne p3, v4, :cond_5

    sget p3, Lcom/tencent/tme/live/biz/R$string;->tme_received:I

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    sget p3, Lcom/tencent/tme/live/biz/R$color;->tme_reward_text_received_color:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    sget p3, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_item:I

    invoke-virtual {v3, p3}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    sget p3, Lcom/tencent/tme/live/biz/R$color;->tme_reward_time_received_color:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/4 p2, 0x2

    const/16 v4, 0x8

    if-ne p3, p2, :cond_6

    sget p2, Lcom/tencent/tme/live/biz/R$string;->tme_receiving:I

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    sget p2, Lcom/tencent/tme/live/biz/R$color;->tme_reward_text_receiving_color:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget p2, Lcom/tencent/tme/live/biz/R$string;->reward_fg_reward_item:I

    invoke-virtual {v3, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    sget p2, Lcom/tencent/tme/live/biz/R$color;->tme_reward_time_receiving_color:I

    goto :goto_3

    :cond_6
    const-string p2, ""

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_item:I

    invoke-virtual {v3, p2}, Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;->setLocalUri(I)V

    sget p2, Lcom/tencent/tme/live/biz/R$color;->tme_reward_time_unreceive_color:I

    :goto_3
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p1
.end method
