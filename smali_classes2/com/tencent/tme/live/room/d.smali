.class public Lcom/tencent/tme/live/room/d;
.super Lcom/tencent/tme/live/c1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/b<",
        "Lcom/tencent/tme/live/w0/o$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/tencent/tme/live/room/PlayerQualitySetView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/room/PlayerQualitySetView;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    invoke-direct {p0, p2, p3}, Lcom/tencent/tme/live/c1/b;-><init>(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 3

    check-cast p3, Lcom/tencent/tme/live/w0/o$b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tme_player_quality_item:I

    iget-object v2, p0, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    .line 2
    iget-object v2, v2, Lcom/tencent/tme/live/room/PlayerQualitySetView;->a:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_3

    iget-object v1, p3, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/tencent/tme/live/biz/R$id;->top_line:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->txt_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p3, Lcom/tencent/tme/live/w0/o$b;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/tencent/tme/live/biz/R$id;->img_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMETabView;

    iget-object v1, p0, Lcom/tencent/tme/live/room/d;->c:Lcom/tencent/tme/live/room/PlayerQualitySetView;

    .line 4
    iget-object v1, v1, Lcom/tencent/tme/live/room/PlayerQualitySetView;->d:Lcom/tencent/tme/live/w0/o$b;

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p3, Lcom/tencent/tme/live/w0/o$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setCheck(Z)V

    new-instance v0, Lcom/tencent/tme/live/s1/b;

    invoke-direct {v0, p0, p3}, Lcom/tencent/tme/live/s1/b;-><init>(Lcom/tencent/tme/live/room/d;Lcom/tencent/tme/live/w0/o$b;)V

    invoke-virtual {p2, v0}, Lcom/tencent/tme/live/framework/view/base/TMETabView;->setOnCheckChangeListener(Lcom/tencent/tme/live/framework/view/base/TMETabView$a;)V

    new-instance p2, Lcom/tencent/tme/live/s1/c;

    invoke-direct {p2, p0, p3}, Lcom/tencent/tme/live/s1/c;-><init>(Lcom/tencent/tme/live/room/d;Lcom/tencent/tme/live/w0/o$b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-object p1
.end method
