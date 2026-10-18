.class public Lcom/tencent/tmes/live/redpacket/PackageViewHost;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/tencent/tme/live/y2/d;


# instance fields
.field public a:Lcom/tencent/tme/live/w0/j;

.field public b:Lcom/tencent/tme/live/w0/j$a;

.field public c:Lcom/tencent/tmes/live/redpacket/j;

.field public d:Lcom/tencent/tmes/live/redpacket/e;

.field public e:Lcom/tencent/tmes/live/redpacket/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/c;->a()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/j;->a()V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/e;->a()V

    :cond_5
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/c;->a()V

    :cond_6
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/j;->a()V

    :cond_7
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_packet_host:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/tencent/tmes/live/redpacket/j;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ic_timer_packet:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/tmes/live/redpacket/j;-><init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    new-instance p1, Lcom/tencent/tmes/live/redpacket/e;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ic_grabbed_packet:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/tmes/live/redpacket/e;-><init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    new-instance p1, Lcom/tencent/tmes/live/redpacket/c;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->ic_finish_packet:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/tmes/live/redpacket/c;-><init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    .line 1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmes/live/redpacket/j;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/tmes/live/redpacket/e;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_1
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {p1, p2, v0}, Lcom/tencent/tmes/live/redpacket/c;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    .line 2
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-nez v0, :cond_4

    .line 1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/e;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/c;->a()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/j;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/e;->a()V

    :cond_5
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/c;->a()V

    :cond_6
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/j;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne v0, v1, :cond_c

    .line 3
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_9

    .line 4
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/c;->a()V

    :cond_a
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/e;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_b
    return-void

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 6
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c:Lcom/tencent/tmes/live/redpacket/j;

    if-eqz v0, :cond_d

    .line 7
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/j;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_d
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->d:Lcom/tencent/tmes/live/redpacket/e;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/e;->a()V

    :cond_e
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->e:Lcom/tencent/tmes/live/redpacket/c;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->a:Lcom/tencent/tme/live/w0/j;

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b:Lcom/tencent/tme/live/w0/j$a;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/c;->a(Lcom/tencent/tme/live/w0/j;Lcom/tencent/tme/live/w0/j$a;)V

    :cond_f
    return-void
.end method
