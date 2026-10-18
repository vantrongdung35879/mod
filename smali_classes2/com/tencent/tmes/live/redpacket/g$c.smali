.class public Lcom/tencent/tmes/live/redpacket/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmes/live/redpacket/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/g;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/tencent/tme/live/biz/R$id;->sub0:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/tencent/tme/live/biz/R$id;->sub1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/tencent/tme/live/biz/R$id;->sub2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget v0, Lcom/tencent/tme/live/biz/R$id;->sub3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    sget v0, Lcom/tencent/tme/live/biz/R$id;->sub4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$c;->a:Lcom/tencent/tmes/live/redpacket/g;

    const/4 v0, 0x4

    .line 1
    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/tencent/tmes/live/redpacket/g;->a(IZ)V

    :cond_4
    return-void
.end method
