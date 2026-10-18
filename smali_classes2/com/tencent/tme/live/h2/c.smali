.class public abstract Lcom/tencent/tme/live/h2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/h2/f;


# instance fields
.field public final a:Lcom/tencent/tme/live/f2/c;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/tme/live/f2/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "buffer"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tme/live/f2/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/h2/c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/f2/j;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/h2/c;->b:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/tencent/tme/live/f2/j;->getTransportMetadata()Lcom/tencent/tme/live/e2/o;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/e2/d;

    .line 1
    iget-boolean v0, v0, Lcom/tencent/tme/live/e2/d;->d:Z

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/h2/c;->b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, v0}, Lcom/tencent/tme/live/f2/j;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/z1/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    move-object p2, v0

    goto :goto_0

    :catch_0
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v2

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->p()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/z1/b;->a(Z)Lcom/tencent/tme/live/z1/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/tme/live/z1/b;->n()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tme/live/z1/b;->a(Ljava/nio/ByteOrder;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v2, v0}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v2, p2}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {v2}, Lcom/tencent/tme/live/z1/b;->f()Lcom/tencent/tme/live/z1/b;

    iget-object p2, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p2, v2}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tme/live/h2/c;->b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->o()I

    move-result v3

    if-eq v3, v2, :cond_6

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->j()Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->k()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->d()Lcom/tencent/tme/live/z1/b;

    goto :goto_3

    .line 3
    :cond_8
    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->c()I

    move-result p3

    invoke-static {p3}, Lcom/tencent/tme/live/z1/b;->a(I)Lcom/tencent/tme/live/z1/b;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/tencent/tme/live/z1/b;->a(Z)Lcom/tencent/tme/live/z1/b;

    move-result-object p3

    invoke-virtual {p2}, Lcom/tencent/tme/live/z1/b;->n()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/tme/live/z1/b;->a(Ljava/nio/ByteOrder;)Lcom/tencent/tme/live/z1/b;

    invoke-virtual {p3, p2}, Lcom/tencent/tme/live/z1/b;->a(Lcom/tencent/tme/live/z1/b;)Lcom/tencent/tme/live/z1/b;

    iget-object p2, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p2, p3}, Lcom/tencent/tme/live/f2/j;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    .line 4
    iget-object p2, p0, Lcom/tencent/tme/live/h2/c;->a:Lcom/tencent/tme/live/f2/c;

    invoke-interface {p1, p2}, Lcom/tencent/tme/live/f2/j;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    return-void
.end method

.method public abstract b(Lcom/tencent/tme/live/f2/j;Lcom/tencent/tme/live/z1/b;Lcom/tencent/tme/live/h2/h;)Z
.end method
