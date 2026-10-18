.class public Lcom/tencent/tme/live/r0/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/r0/c;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/r0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/r0/b;->a:Lcom/tencent/tme/live/r0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/tencent/tme/live/r0/b;->a:Lcom/tencent/tme/live/r0/c;

    .line 1
    iget-object p1, p1, Lcom/tencent/tme/live/r0/c;->j:Lcom/tencent/tme/live/room/b;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/tencent/tme/live/room/b;->n:Lcom/tencent/tme/live/framework/view/base/TMESwitchView;

    if-eqz v1, :cond_0

    iget-boolean p1, p1, Lcom/tencent/tme/live/room/b;->o:Z

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/tencent/tme/live/framework/view/base/TMESwitchView;->setCheck(Z)V

    .line 3
    :cond_0
    sget-object p1, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/tencent/tme/live/v0/f;->b()Lcom/tencent/tme/live/w0/o$a;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tme/live/w0/o$a;->d:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v2

    new-instance v3, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v3}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 7
    new-instance v4, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v4, v3}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 8
    new-instance v3, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v3}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 9
    iput-object p1, v3, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 10
    iput-object v1, v3, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 11
    new-instance v5, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v5, v3}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 12
    new-instance p1, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 13
    new-instance v6, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v6, p1}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 14
    new-instance p1, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 15
    new-instance v7, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v7, p1}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 16
    const-string v3, "DataEntryClick_fullscreen_aov"

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/r0/b;->a:Lcom/tencent/tme/live/r0/c;

    .line 18
    iget-object p1, p1, Lcom/tencent/tme/live/r0/c;->m:Lcom/tencent/tme/live/r0/a;

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/tencent/tme/live/r0/a;->i()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    if-eqz v1, :cond_4

    sget v1, Lcom/tencent/tme/live/biz/R$string;->tme_game_data:I

    invoke-virtual {p1, v1}, Lcom/tencent/tme/live/r0/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    .line 20
    iget-object v1, v1, Lcom/tencent/tme/live/c1/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 21
    iget-object p1, p1, Lcom/tencent/tme/live/r0/a;->n:Lcom/tencent/tme/live/c1/c;

    invoke-virtual {p1, v0}, Lcom/tencent/tme/live/c1/c;->a(I)V

    :cond_4
    :goto_0
    return-void
.end method
