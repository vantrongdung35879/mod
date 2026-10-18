.class public Lcom/tencent/tme/live/y2/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/PacketEntryView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    iget-object p1, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 1
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 4
    iget-object v1, v1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a(Lcom/tencent/tmes/live/redpacket/PacketEntryView;Landroid/content/Context;Lcom/tencent/tme/live/w0/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    const-string v1, "PacketEntryView"

    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 8
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    .line 9
    iget p1, p1, Lcom/tencent/tme/live/w0/j;->a:I

    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    sget-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    iget-object v2, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 10
    iget-boolean v3, v2, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->h:Z

    .line 11
    iget-object v2, v2, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    .line 12
    invoke-static {v2}, Lcom/tencent/tmes/live/redpacket/b;->b(Lcom/tencent/tme/live/w0/j;)I

    move-result v2

    iget-object v4, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 13
    invoke-virtual {v4}, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->a()Z

    move-result v4

    .line 14
    iget-object v5, p0, Lcom/tencent/tme/live/y2/e;->a:Lcom/tencent/tmes/live/redpacket/PacketEntryView;

    .line 15
    iget-object v5, v5, Lcom/tencent/tmes/live/redpacket/PacketEntryView;->e:Lcom/tencent/tme/live/w0/j;

    .line 16
    invoke-virtual {v5}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v5

    .line 17
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v6

    new-instance v7, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 18
    new-instance v8, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v8, v7}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 19
    new-instance v7, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, v7, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 21
    iput-object v0, v7, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 22
    new-instance v9, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v9, v7}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 23
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    const/4 v0, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 24
    :goto_1
    iput v1, p1, Lcom/tencent/tme/live/z0/b$a;->a:I

    if-nez v3, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 25
    :goto_2
    iput v1, p1, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 26
    iput v2, p1, Lcom/tencent/tme/live/z0/b$a;->c:I

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 27
    :goto_3
    iput v0, p1, Lcom/tencent/tme/live/z0/b$a;->d:I

    .line 28
    new-instance v10, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v10, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 29
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    if-eqz v5, :cond_4

    const-string v0, "single"

    goto :goto_4

    :cond_4
    const-string v0, "multiple"

    .line 30
    :goto_4
    iput-object v0, p1, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 31
    new-instance v11, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v11, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 32
    const-string v7, "RedPacketEntryClick_aov"

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    return-void
.end method
