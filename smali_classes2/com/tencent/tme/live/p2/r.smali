.class public Lcom/tencent/tme/live/p2/r;
.super Lcom/tencent/tme/live/p2/s;


# instance fields
.field public f:Ljava/lang/Boolean;

.field public g:Lcom/tencent/tme/live/q2/f;

.field public h:Lcom/tencent/tme/live/q2/i;

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/p2/s;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tme/live/p2/r;->f:Ljava/lang/Boolean;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/tme/live/p2/r;->i:I

    const-string p1, "fcTL"

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/p2/q;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/p2/f;
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/p2/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/p2/r$a;-><init>(Lcom/tencent/tme/live/p2/r;Z)V

    return-object v0
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/tme/live/p2/q;->b()V

    return-void
.end method

.method public d()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/p2/r;->f:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/p2/q;->a(Z)Lcom/tencent/tme/live/q2/d;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "acTL"

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/q2/e;

    .line 6
    iget-object v6, v4, Lcom/tencent/tme/live/q2/e;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/q2/e;

    invoke-virtual {v2}, Lcom/tencent/tme/live/q2/e;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/tencent/tme/live/p2/v;

    const-string v1, "unexpected multiple chunks id="

    invoke-static {v1, v5}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/q2/e;

    .line 9
    :goto_2
    check-cast v2, Lcom/tencent/tme/live/q2/f;

    iput-object v2, p0, Lcom/tencent/tme/live/p2/r;->g:Lcom/tencent/tme/live/q2/f;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/p2/r;->f:Ljava/lang/Boolean;

    :cond_6
    iget-object v0, p0, Lcom/tencent/tme/live/p2/r;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/p2/r;->g:Lcom/tencent/tme/live/q2/f;

    .line 11
    iget v0, v0, Lcom/tencent/tme/live/q2/f;->d:I

    return v0

    :cond_7
    return v1
.end method
