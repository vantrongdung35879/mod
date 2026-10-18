.class public Lcom/tencent/tmes/live/redpacket/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmes/live/redpacket/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmes/live/redpacket/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 3
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/tmes/live/redpacket/h$c;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/tmes/live/redpacket/h$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/tmes/live/redpacket/h$c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 3
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getPacketListBean()Lcom/tencent/tme/live/w0/j;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 5
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b()V

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->i:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/tencent/tmes/live/redpacket/h$c;->b(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 10
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->setData(Lcom/tencent/tme/live/w0/j;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tmes/live/redpacket/h;->d:Lcom/tencent/tme/live/w0/j;

    :cond_2
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 11
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/tencent/tmes/live/redpacket/h$c;->b(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/h$a;->a:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/h;->h:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/tmes/live/redpacket/h$c;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
