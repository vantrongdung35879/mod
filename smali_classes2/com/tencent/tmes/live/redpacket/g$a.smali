.class public Lcom/tencent/tmes/live/redpacket/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmes/live/redpacket/g;->c()V
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

    iput-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$a;->a:Lcom/tencent/tmes/live/redpacket/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$a;->a:Lcom/tencent/tmes/live/redpacket/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/tencent/tmes/live/redpacket/g$a;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 1
    iget v0, p1, Lcom/tencent/tmes/live/redpacket/g;->f:I

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/tmes/live/redpacket/g;->b(I)Lcom/tencent/tme/live/w0/j$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/tencent/tmes/live/redpacket/g$a;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 4
    iget-object v0, v0, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    .line 5
    iget v1, v0, Lcom/tencent/tme/live/w0/j;->a:I

    iget v2, p1, Lcom/tencent/tme/live/w0/j$a;->i:I

    sget-boolean v3, Lcom/tencent/tme/live/v0/f;->g:Z

    iget p1, p1, Lcom/tencent/tme/live/w0/j$a;->j:I

    invoke-virtual {v0}, Lcom/tencent/tme/live/w0/j;->a()Z

    move-result v0

    iget-object v4, p0, Lcom/tencent/tmes/live/redpacket/g$a;->a:Lcom/tencent/tmes/live/redpacket/g;

    .line 6
    iget-object v4, v4, Lcom/tencent/tmes/live/redpacket/g;->b:Lcom/tencent/tme/live/w0/j;

    .line 7
    invoke-static {v4}, Lcom/tencent/tmes/live/redpacket/b;->a(Lcom/tencent/tme/live/w0/j;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v5

    new-instance v6, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v6}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 9
    new-instance v7, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v7, v6}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 10
    new-instance v6, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v6}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, v6, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v6, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 14
    new-instance v8, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v8, v6}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 15
    new-instance v1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 16
    :goto_0
    iput v2, v1, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 17
    iput p1, v1, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 18
    new-instance v9, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v9, v1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 19
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "single"

    goto :goto_1

    :cond_1
    const-string v0, "multiple"

    .line 20
    :goto_1
    iput-object v0, p1, Lcom/tencent/tme/live/z0/d$a;->a:Ljava/lang/String;

    .line 21
    iput-object v4, p1, Lcom/tencent/tme/live/z0/d$a;->b:Ljava/lang/String;

    .line 22
    new-instance v10, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v10, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 23
    const-string v6, "RedPacketPanelClose_aov"

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    :cond_2
    return-void
.end method
