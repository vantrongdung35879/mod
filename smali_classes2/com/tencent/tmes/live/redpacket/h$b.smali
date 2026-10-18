.class public Lcom/tencent/tmes/live/redpacket/h$b;
.super Lcom/tencent/tme/live/y2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/h;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j;ZLcom/tencent/tmes/live/redpacket/h$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/w0/j;

.field public final synthetic b:Lcom/tencent/tmes/live/redpacket/h;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/h;Lcom/tencent/tme/live/w0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/h$b;->a:Lcom/tencent/tme/live/w0/j;

    invoke-direct {p0}, Lcom/tencent/tme/live/y2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->b:Lcom/tencent/tmes/live/redpacket/h;

    .line 1
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/h;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->a:Lcom/tencent/tme/live/w0/j;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/tencent/tme/live/w0/j;->a:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object p1

    iget-object v1, p1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/h$b;->a:Lcom/tencent/tme/live/w0/j;

    invoke-virtual {p1}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/tencent/tme/live/y0/a;->a(ILjava/lang/String;ZZIZZ)V

    :cond_1
    return-void
.end method
