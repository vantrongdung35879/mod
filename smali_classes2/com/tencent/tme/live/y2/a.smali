.class public Lcom/tencent/tme/live/y2/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/y2/b;

.field public final synthetic b:Lcom/tencent/tmes/live/redpacket/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/a;Lcom/tencent/tme/live/y2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/y2/a;->b:Lcom/tencent/tmes/live/redpacket/a;

    iput-object p2, p0, Lcom/tencent/tme/live/y2/a;->a:Lcom/tencent/tme/live/y2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->b:Lcom/tencent/tmes/live/redpacket/a;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->a:Lcom/tencent/tme/live/y2/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/tencent/tmes/live/redpacket/h$b;

    .line 3
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    .line 4
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->b:Lcom/tencent/tmes/live/redpacket/a;

    invoke-static {p1, v0}, Lcom/tencent/tmes/live/redpacket/a;->a(Lcom/tencent/tmes/live/redpacket/a;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->b:Lcom/tencent/tmes/live/redpacket/a;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/tencent/tmes/live/redpacket/a;->e:Landroid/animation/AnimatorSet;

    .line 2
    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->a:Lcom/tencent/tme/live/y2/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/tencent/tmes/live/redpacket/h$b;

    .line 3
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    .line 4
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->b:Lcom/tencent/tmes/live/redpacket/a;

    invoke-static {p1, v0}, Lcom/tencent/tmes/live/redpacket/a;->a(Lcom/tencent/tmes/live/redpacket/a;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/tme/live/y2/a;->a:Lcom/tencent/tme/live/y2/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/y2/a;->a:Lcom/tencent/tme/live/y2/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tme/live/y2/b;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
