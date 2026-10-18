.class public Lcom/tencent/tmes/live/redpacket/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public i:Landroid/widget/TextView;

.field public j:Lcom/tencent/tme/live/w0/j;

.field public k:Lcom/tencent/tme/live/w0/j$a;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lcom/tencent/tmes/live/redpacket/d;

.field public o:Lcom/tencent/tmes/live/redpacket/PackageViewHost;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->o:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->b:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_gift_pic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_gift_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->d:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->e:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_timer_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->l:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_timer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->tv_timer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->i:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->fl_grab_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->iv_grab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    new-instance v1, Lcom/tencent/tme/live/v0/c;

    new-instance v2, Lcom/tencent/tmes/live/redpacket/j$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/tmes/live/redpacket/j$a;-><init>(Lcom/tencent/tmes/live/redpacket/j;Lcom/tencent/tmes/live/redpacket/PackageViewHost;Landroid/view/View;)V

    const-wide/16 p1, 0x5dc

    invoke-direct {v1, v2, p1, p2}, Lcom/tencent/tme/live/v0/c;-><init>(Landroid/view/View$OnClickListener;J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/tencent/tmes/live/redpacket/d;

    invoke-direct {p1}, Lcom/tencent/tmes/live/redpacket/d;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/j;->n:Lcom/tencent/tmes/live/redpacket/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    iget v1, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    sget v4, Lcom/tencent/tme/live/biz/R$string;->grabing_packet:I

    invoke-static {v1, v4}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    invoke-static {v1, v4}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/j;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V
    .locals 5

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/tencent/tme/live/w0/j;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/j;->f:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v3, Lcom/tencent/tme/live/biz/R$string;->redpacket_def_background:I

    invoke-static {v0, v2, v3}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/tme/live/w0/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/tencent/tme/live/w0/j$a;->f:I

    if-nez v0, :cond_0

    sget v0, Lcom/tencent/tme/live/biz/R$string;->redpacket_points:I

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/j;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v2}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/tencent/tme/live/w0/j$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/j;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {v0, v2}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/content/Context;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/j;->e:Landroid/widget/TextView;

    sget v2, Lcom/tencent/tme/live/biz/R$string;->reward_desc_prefix:I

    invoke-static {v0, v2}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lcom/tencent/tme/live/w0/j$a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "%s%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p2, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/16 v0, 0x8

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->l:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/w0/j;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->h:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    :goto_1
    sget v0, Lcom/tencent/tme/live/biz/R$string;->redpacket_grab_button_def:I

    invoke-static {p1, p2, v0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->m:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->l:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/w0/j;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/j;->g:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
