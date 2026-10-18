.class public Lcom/tencent/tmes/live/redpacket/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/c;->a:Landroid/view/View;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/c;->b:Landroid/widget/TextView;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->iv_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/c;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->tv_gift_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/c;->d:Landroid/widget/TextView;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->iv_gift_pic:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/c;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p2, Lcom/tencent/tme/live/biz/R$id;->tv_gift_num:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/c;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/tencent/tme/live/w0/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->e:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->redpacket_def_background:I

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/c;->b:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->redpacket_finish_tip:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget p1, p2, Lcom/tencent/tme/live/w0/j$a;->f:I

    if-nez p1, :cond_0

    sget p1, Lcom/tencent/tme/live/biz/R$string;->redpacket_points:I

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/tencent/tme/live/w0/j$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->c:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/c;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1
    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/content/Context;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/c;->f:Landroid/widget/TextView;

    iget p2, p2, Lcom/tencent/tme/live/w0/j$a;->h:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
