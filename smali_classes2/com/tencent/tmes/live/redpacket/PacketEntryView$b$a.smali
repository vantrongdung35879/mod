.class public Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d()V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f()V

    .line 4
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e()V

    .line 6
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 7
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/g;->e()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 9
    iget-boolean v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget v2, v1, Lcom/tencent/tme/live/w0/j;->a:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    iget-object v3, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v4, Lcom/tencent/tme/live/v0/f;->g:Z

    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    invoke-static {v1}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a()Z

    move-result v7

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v8

    const/4 v5, 0x1

    invoke-static/range {v2 .. v8}, Lcom/tencent/tme/live/y0/a;->a(ILjava/lang/String;ZZIZZ)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 11
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    if-nez v1, :cond_a

    .line 12
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    invoke-static {v1}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v1, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v1, v1, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 13
    iget-object v3, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, v3, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_8

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/w0/j$a;

    :goto_2
    if-nez v0, :cond_9

    goto :goto_3

    .line 14
    :cond_9
    iget v0, v0, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-ne v2, v0, :cond_a

    .line 15
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    new-instance v1, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    .line 16
    invoke-direct {v1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V

    .line 17
    iput-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    const-wide/32 v2, 0xea60

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 19
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    .line 20
    invoke-static {v0}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v0

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 21
    iget-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b$a;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    new-instance v1, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    .line 23
    invoke-direct {v1, v0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V

    .line 24
    iput-object v1, v0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_4
    return-void
.end method
