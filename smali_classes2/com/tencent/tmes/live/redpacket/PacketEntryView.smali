.class public Lcom/tencent/tmes/live/redpacket/PacketEntryView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;,
        Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/tencent/tmes/live/redpacket/g;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/tencent/tme/live/w0/j;

.field public f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

.field public g:Ljava/util/Timer;

.field public h:Z

.field public i:Lcom/tencent/tmes/live/redpacket/h$c;

.field public j:Z

.field public k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    iput-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    iput-boolean p2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    iput-boolean p2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    invoke-virtual {p0, p1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/tencent/tmes/live/redpacket/PacketEntryView;Landroid/content/Context;Lcom/tencent/tme/live/w0/j;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p1}, Lcom/tencent/tme/live/b1/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getSubPacketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2
    const-string p0, "showRedPacketDialog, none subpackets"

    const/4 p1, 0x0

    const-string p2, "PacketEntryView"

    invoke-static {p2, p0, p1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    xor-int/2addr v0, v1

    new-instance v1, Lcom/tencent/tmes/live/redpacket/g;

    invoke-direct {v1, p1, p2, v0}, Lcom/tencent/tmes/live/redpacket/g;-><init>(Landroid/content/Context;Lcom/tencent/tme/live/w0/j;Z)V

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    new-instance p1, Lcom/tencent/tmes/live/redpacket/f;

    invoke-direct {p1, p0}, Lcom/tencent/tmes/live/redpacket/f;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/tme/live/d1/a;->show()V

    :cond_4
    iget-object p0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->i:Lcom/tencent/tmes/live/redpacket/h$c;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/tencent/tmes/live/redpacket/h$c;->a()V

    :cond_5
    :goto_0
    return-void
.end method

.method private getSubPacketCount()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getSubPacketCount()I

    move-result v0

    const-string v1, ""

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/j$a;

    iget v2, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget v0, Lcom/tencent/tme/live/biz/R$string;->grabing_packet:I

    invoke-static {p0, v0}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/j$a;

    iget v3, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, v2}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;Lcom/tencent/tme/live/w0/j$a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "titleStr index:"

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v3, v3, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", titleStr:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startTimestamp:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/tencent/tme/live/w0/j$a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PacketEntryView"

    invoke-static {v2, v1}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/tencent/tme/live/biz/R$layout;->tmes_layout_packet_entry:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->iv_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    sget p1, Lcom/tencent/tme/live/biz/R$id;->tv_count:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    sget v0, Lcom/tencent/tme/live/biz/R$string;->red_packet_top_dot:I

    invoke-static {v0, p1}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    .line 4
    new-instance p1, Lcom/tencent/tme/live/v0/c;

    new-instance v0, Lcom/tencent/tme/live/y2/e;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/y2/e;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V

    const-wide/16 v1, 0x320

    .line 5
    invoke-direct {p1, v0, v1, v2}, Lcom/tencent/tme/live/v0/c;-><init>(Landroid/view/View$OnClickListener;J)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e()V

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f()V

    return-void
.end method

.method public final a()Z
    .locals 4

    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getSubPacketCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/j$a;

    iget v2, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return v3

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v0, v0, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/w0/j$a;

    iget v2, v2, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->k:Lcom/tencent/tmes/live/redpacket/PacketEntryView$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    :cond_0
    iput-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c:Lcom/tencent/tmes/live/redpacket/g;

    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    :cond_1
    return-void
.end method

.method public d()V
    .locals 11

    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getSubPacketCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v2, v2, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/w0/j$a;

    iget v4, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    const-string v7, "PacketEntryView"

    if-ne v4, v6, :cond_4

    iget-wide v8, v3, Lcom/tencent/tme/live/w0/j$a;->c:J

    cmp-long v4, v0, v8

    if-ltz v4, :cond_4

    iput v5, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    const-string v4, "UNDERWAY 2 FINISH, index:"

    invoke-static {v4}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v8, v8, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v4, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-nez v4, :cond_1

    iget-wide v8, v3, Lcom/tencent/tme/live/w0/j$a;->c:J

    cmp-long v4, v0, v8

    if-ltz v4, :cond_5

    iput v5, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    const-string v4, "NOT_STARTED 2 FINISH, index:"

    invoke-static {v4}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v5, v5, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v4, v3, Lcom/tencent/tme/live/w0/j$a;->b:J

    sub-long v4, v0, v4

    const-wide/16 v8, -0x1f4

    cmp-long v10, v4, v8

    if-lez v10, :cond_1

    iget-wide v4, v3, Lcom/tencent/tme/live/w0/j$a;->c:J

    cmp-long v8, v0, v4

    if-gez v8, :cond_1

    iput v6, v3, Lcom/tencent/tme/live/w0/j$a;->a:I

    const-string v4, "NOT_STARTED 2 UNDERWAY, index:"

    invoke-static {v4}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object v5, v5, Lcom/tencent/tme/live/w0/j;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/tencent/tme/live/t1/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "titleStr empty"

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    if-eqz v1, :cond_1

    const-string v0, "zoomInState"

    :goto_0
    const/4 v1, 0x0

    .line 1
    const-string v2, "PacketEntryView"

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/tencent/tme/live/biz/R$string;->grabing_packet:I

    invoke-static {p0, v1}, Lcom/tencent/tmes/live/redpacket/b;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_redpacket_grabbing:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/tme/live/biz/R$color;->tme_white:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/tencent/tme/live/s2/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/b1/p;->a(Landroid/widget/TextView;II)V

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->getSubPacketCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    invoke-static {v1}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->d:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public getPacketListBean()Lcom/tencent/tme/live/w0/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    return-object v0
.end method

.method public setData(Lcom/tencent/tme/live/w0/j;)V
    .locals 6

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    iget-object p1, p1, Lcom/tencent/tme/live/w0/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a:Lcom/tencent/tme/live/framework/view/base/TMEImageView;

    sget v1, Lcom/tencent/tme/live/biz/R$string;->transparent_entrance_icon_defalut:I

    invoke-static {p1, v0, v1}, Lcom/tencent/tme/live/b1/f;->a(Ljava/lang/String;Lcom/tencent/tme/live/framework/view/base/TMEBaseImageView;I)V

    sget p1, Lcom/tencent/tme/live/biz/R$string;->reward_bg_reward_enter_text:I

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/tencent/tme/live/b1/f;->a(ILandroid/view/View;)V

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->c()V

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    :cond_0
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    if-nez p1, :cond_1

    new-instance p1, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    .line 2
    invoke-direct {p1, p0}, Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;-><init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V

    .line 3
    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->j:Z

    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->g:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->f:Lcom/tencent/tmes/live/redpacket/PacketEntryView$b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setShowStateCallback(Lcom/tencent/tmes/live/redpacket/h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->i:Lcom/tencent/tmes/live/redpacket/h$c;

    return-void
.end method
