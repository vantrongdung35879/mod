.class public abstract Lcom/tencent/tme/live/z1/a;
.super Lcom/tencent/tme/live/z1/b;


# instance fields
.field public b:Z

.field public c:Z

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/z1/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tme/live/z1/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    invoke-static {}, Lcom/tencent/tme/live/z1/b;->h()Lcom/tencent/tme/live/z1/c;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    iget p1, p1, Lcom/tencent/tme/live/z1/a;->d:I

    iput p1, p0, Lcom/tencent/tme/live/z1/a;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tme/live/z1/c;I)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/z1/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tme/live/z1/a;->e:I

    invoke-static {p1}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/c;)V

    iput-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    iput p2, p0, Lcom/tencent/tme/live/z1/a;->d:I

    return-void
.end method


# virtual methods
.method public final a(IIZ)Lcom/tencent/tme/live/z1/b;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    if-eqz v0, :cond_6

    add-int/2addr p1, p2

    if-eqz p3, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p2

    if-ge p2, p1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    shl-int/2addr p2, p3

    if-gez p2, :cond_3

    :goto_1
    const p2, 0x7fffffff

    goto :goto_2

    :cond_2
    move p2, p1

    .line 2
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->c()I

    move-result p3

    if-le p2, p3, :cond_4

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/z1/a;->f(I)Lcom/tencent/tme/live/z1/b;

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result p2

    if-le p1, p2, :cond_5

    move-object p2, p0

    check-cast p2, Lcom/tencent/tme/live/z1/e$a;

    .line 3
    iget-object p2, p2, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_5
    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    .line 12
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 13
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final a(Ljava/nio/ByteBuffer;)Lcom/tencent/tme/live/z1/b;
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    .line 17
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 18
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final a(Ljava/nio/ByteOrder;)Lcom/tencent/tme/live/z1/b;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 7
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final a(Z)Lcom/tencent/tme/live/z1/b;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/tencent/tme/live/z1/a;->b:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)Lcom/tencent/tme/live/z1/b;
    .locals 3

    array-length v0, p1

    .line 20
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    .line 22
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/tencent/tme/live/z1/e$a;

    .line 23
    iget-object v1, v1, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final a([BII)Lcom/tencent/tme/live/z1/b;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final b(I)Lcom/tencent/tme/live/z1/b;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)B
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 3
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/tencent/tme/live/z1/b;

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v2

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/z1/a;->c(I)B

    move-result v3

    invoke-virtual {p1, v2}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v4, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result p1

    sub-int p1, v0, p1

    :goto_1
    return p1
.end method

.method public final d()Lcom/tencent/tme/live/z1/b;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    return-object p0
.end method

.method public final d(I)Lcom/tencent/tme/live/z1/b;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    .line 4
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 5
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/tme/live/z1/a;->e:I

    :cond_1
    return-object p0
.end method

.method public final e()Lcom/tencent/tme/live/z1/b;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    new-instance v1, Lcom/tencent/tme/live/z1/e$a;

    iget-object v2, v0, Lcom/tencent/tme/live/z1/e$a;->g:Lcom/tencent/tme/live/z1/e;

    iget-object v3, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/tme/live/z1/e$a;-><init>(Lcom/tencent/tme/live/z1/e;Lcom/tencent/tme/live/z1/e$a;Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public final e(I)Lcom/tencent/tme/live/z1/b;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/tme/live/z1/a;->a(IIZ)Lcom/tencent/tme/live/z1/b;

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 4
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/tme/live/z1/a;->e:I

    :cond_1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/tencent/tme/live/z1/b;->l()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-lt v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/z1/a;->c(I)B

    move-result v5

    invoke-virtual {p1, v4}, Lcom/tencent/tme/live/z1/b;->c(I)B

    move-result v6

    if-eq v5, v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final f()Lcom/tencent/tme/live/z1/b;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 14
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    return-object p0
.end method

.method public final f(I)Lcom/tencent/tme/live/z1/b;
    .locals 7

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->c()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->n()Ljava/nio/ByteOrder;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v4, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v5, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->t()Z

    move-result v6

    check-cast v5, Lcom/tencent/tme/live/z1/e;

    invoke-virtual {v5, p1, v6}, Lcom/tencent/tme/live/z1/e;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iput-object p1, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p1, p0, Lcom/tencent/tme/live/z1/a;->e:I

    if-ltz p1, :cond_0

    .line 6
    iget-object v1, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget-object p1, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 10
    :cond_0
    iget-object p1, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object p1, v3, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/tencent/tme/live/z1/d;->a:[B

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->p()I

    move-result p1

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "empty"

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->s()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/tencent/tme/live/z1/d;->a:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/z1/d;->b:[B

    aget-byte v3, v4, v3

    :goto_2
    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->s()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lcom/tencent/tme/live/z1/d;->a:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tencent/tme/live/z1/d;->b:[B

    aget-byte v3, v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/z1/a;->e(I)Lcom/tencent/tme/live/z1/b;

    if-eqz v0, :cond_4

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lengthLimit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 1+)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/z1/a;->c(I)B

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/z1/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public final m()Lcom/tencent/tme/live/z1/b;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    return-object p0
.end method

.method public final n()Ljava/nio/ByteOrder;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final q()Lcom/tencent/tme/live/z1/b;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object p0
.end method

.method public final r()Lcom/tencent/tme/live/z1/b;
    .locals 8

    iget-boolean v0, p0, Lcom/tencent/tme/live/z1/a;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    iget v3, p0, Lcom/tencent/tme/live/z1/a;->d:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    :goto_0
    ushr-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->n()Ljava/nio/ByteOrder;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v5, v4, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v6, Lcom/tencent/tme/live/z1/b;->a:Lcom/tencent/tme/live/z1/c;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->t()Z

    move-result v7

    check-cast v6, Lcom/tencent/tme/live/z1/e;

    invoke-virtual {v6, v3, v7}, Lcom/tencent/tme/live/z1/e;->a(IZ)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iput-object v3, v4, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object v0, v4, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v0, v4, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/z1/a;->e:I

    return-object p0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Derived buffers and their parent can\'t be expanded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()B
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/tencent/tme/live/z1/e$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/z1/e$a;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DirectBuffer"

    goto :goto_0

    :cond_0
    const-string v1, "HeapBuffer"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/tme/live/z1/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/tencent/tme/live/z1/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
