.class public Lcom/tencent/tme/live/chat/g;
.super Lcom/tencent/tme/live/c1/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/c1/a<",
        "Lcom/tencent/tme/live/w0/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/tme/live/chat/HotWordView;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/chat/HotWordView;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tme/live/c1/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/c1/d;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/tencent/tme/live/w0/g;

    .line 1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->hotword_context:I

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcom/tencent/tme/live/w0/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    .line 2
    iget-boolean v0, v0, Lcom/tencent/tme/live/chat/HotWordView;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$dimen;->tme_setting_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/tme/live/chat/g;->d:Lcom/tencent/tme/live/chat/HotWordView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$dimen;->tme_hotword_list_half_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tencent/tme/live/c1/a;->a:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Lcom/tencent/tme/live/chat/f;

    invoke-direct {v0, p0, p2}, Lcom/tencent/tme/live/chat/f;-><init>(Lcom/tencent/tme/live/chat/g;Lcom/tencent/tme/live/w0/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method
