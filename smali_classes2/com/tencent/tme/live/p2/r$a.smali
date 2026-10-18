.class public Lcom/tencent/tme/live/p2/r$a;
.super Lcom/tencent/tme/live/p2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/p2/r;->a()Lcom/tencent/tme/live/p2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic B:Lcom/tencent/tme/live/p2/r;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/r;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/p2/r$a;->B:Lcom/tencent/tme/live/p2/r;

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/p2/f;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/tme/live/p2/i;
    .locals 8

    new-instance v7, Lcom/tencent/tme/live/p2/n;

    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/f;->s:Z

    .line 1
    iget-object v3, p0, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    .line 2
    iget-object v4, p0, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/tencent/tme/live/p2/n;-><init>(Ljava/lang/String;ZLcom/tencent/tme/live/p2/o;Lcom/tencent/tme/live/p2/j;Ljava/util/zip/Inflater;[B)V

    return-object v7
.end method

.method public a(ILjava/lang/String;J)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/p2/f;->a(ILjava/lang/String;J)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/p2/c;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/tencent/tme/live/p2/f;->a(Lcom/tencent/tme/live/p2/c;)V

    .line 4
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    const-string v1, "fcTL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tme/live/p2/r$a;->B:Lcom/tencent/tme/live/p2/r;

    iget v1, v0, Lcom/tencent/tme/live/p2/r;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tme/live/p2/r;->i:I

    iget-object v1, v0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 6
    iget-object v1, v1, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    .line 7
    iget-object v1, v1, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/q2/i;

    .line 9
    iput-object v1, v0, Lcom/tencent/tme/live/p2/r;->h:Lcom/tencent/tme/live/q2/i;

    .line 10
    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 11
    iget-wide v0, p1, Lcom/tencent/tme/live/q2/c;->e:J

    .line 12
    iget-object p1, p0, Lcom/tencent/tme/live/p2/r$a;->B:Lcom/tencent/tme/live/p2/r;

    .line 13
    iget-object p1, p1, Lcom/tencent/tme/live/p2/r;->h:Lcom/tencent/tme/live/q2/i;

    .line 14
    iget-object v2, p1, Lcom/tencent/tme/live/q2/e;->c:Lcom/tencent/tme/live/q2/c;

    .line 15
    iget-wide v2, v2, Lcom/tencent/tme/live/q2/c;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 16
    new-instance v0, Lcom/tencent/tme/live/p2/o;

    iget v6, p1, Lcom/tencent/tme/live/q2/i;->d:I

    iget v7, p1, Lcom/tencent/tme/live/q2/i;->e:I

    iget-object p1, p1, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget v8, p1, Lcom/tencent/tme/live/p2/o;->c:I

    iget-boolean v9, p1, Lcom/tencent/tme/live/p2/o;->e:Z

    iget-boolean v10, p1, Lcom/tencent/tme/live/p2/o;->f:Z

    iget-boolean v11, p1, Lcom/tencent/tme/live/p2/o;->g:Z

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/tencent/tme/live/p2/o;-><init>(IIIZZZ)V

    .line 17
    iget-object p1, p0, Lcom/tencent/tme/live/p2/r$a;->B:Lcom/tencent/tme/live/p2/r;

    .line 18
    iget-object p1, p1, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 19
    iget-object v1, p1, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/p2/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p1, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    :cond_0
    iget-object v0, p1, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/tme/live/p2/j;

    iget-object v1, p1, Lcom/tencent/tme/live/p2/f;->o:Lcom/tencent/tme/live/p2/o;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/p2/j;-><init>(Lcom/tencent/tme/live/p2/o;)V

    iput-object v0, p1, Lcom/tencent/tme/live/p2/f;->p:Lcom/tencent/tme/live/p2/j;

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string v0, "something went wrong"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/tme/live/p2/f;->b(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fdAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/tme/live/q2/b;->a:[B

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "fdAT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
