.class public Lcom/tencent/tmes/live/redpacket/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/j;-><init>(Landroid/view/View;Lcom/tencent/tmes/live/redpacket/PackageViewHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/tencent/tmes/live/redpacket/j;


# direct methods
.method public constructor <init>(Lcom/tencent/tmes/live/redpacket/j;Lcom/tencent/tmes/live/redpacket/PackageViewHost;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    iput-object p2, p0, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    iput-object p3, p0, Lcom/tencent/tmes/live/redpacket/j$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 1
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->n:Lcom/tencent/tmes/live/redpacket/d;

    if-nez v0, :cond_0

    .line 2
    const-string p1, "grabRepository is null"

    const/4 v0, 0x0

    const-string v1, "TimerPacketViewHolder"

    invoke-static {v1, p1, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_3

    .line 5
    iget v3, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v4, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v0

    .line 6
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v5

    new-instance v6, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v6}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 7
    new-instance v7, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v7, v6}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 8
    new-instance v6, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v6}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v6, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, v6, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 12
    new-instance v8, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v8, v6}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 13
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 14
    :goto_0
    iput v3, p1, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 15
    new-instance v9, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v9, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 16
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    if-eqz v0, :cond_2

    const-string v0, "single"

    goto :goto_1

    :cond_2
    const-string v0, "multiple"

    .line 17
    :goto_1
    iput-object v0, p1, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 18
    new-instance v10, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v10, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 19
    const-string v6, "RedPacketOpenClick_aov"

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 21
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 22
    iget-boolean v4, v0, Lcom/tencent/tme/live/w0/j;->j:Z

    if-eqz v4, :cond_6

    .line 23
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b()V

    :cond_4
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 24
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_5

    .line 25
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_5

    .line 26
    iget v0, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v0, p1, v1, v3}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_5
    return-void

    .line 27
    :cond_6
    iget-object v4, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz v4, :cond_9

    .line 28
    iget v5, v4, Lcom/tencent/tme/live/w0/j$a;->a:I

    if-ne v5, v2, :cond_9

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->b()V

    :cond_7
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 29
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_8

    .line 30
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_8

    .line 31
    iget v0, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v1, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v0, p1, v1, v3}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_8
    return-void

    :cond_9
    if-eqz v4, :cond_c

    iget v2, v4, Lcom/tencent/tme/live/w0/j$a;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->a:Lcom/tencent/tmes/live/redpacket/PackageViewHost;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/tencent/tmes/live/redpacket/PackageViewHost;->c()V

    :cond_a
    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/j$a;->c:Lcom/tencent/tmes/live/redpacket/j;

    .line 32
    iget-object v0, p1, Lcom/tencent/tmes/live/redpacket/j;->j:Lcom/tencent/tme/live/w0/j;

    if-eqz v0, :cond_b

    .line 33
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->k:Lcom/tencent/tme/live/w0/j$a;

    if-eqz p1, :cond_b

    .line 34
    iget v0, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v2, Lcom/tencent/tme/live/v0/f;->g:Z

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/tme/live/y0/a;->a(IIZZ)V

    :cond_b
    return-void

    .line 35
    :cond_c
    iget-object p1, p1, Lcom/tencent/tmes/live/redpacket/j;->n:Lcom/tencent/tmes/live/redpacket/d;

    .line 36
    iget v0, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget v1, v4, Lcom/tencent/tme/live/w0/j$a;->i:I

    new-instance v2, Lcom/tencent/tmes/live/redpacket/j$a$a;

    invoke-direct {v2, p0}, Lcom/tencent/tmes/live/redpacket/j$a$a;-><init>(Lcom/tencent/tmes/live/redpacket/j$a;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/tmes/live/redpacket/d;->a(IILcom/tencent/tme/live/v0/g;)V

    return-void
.end method
