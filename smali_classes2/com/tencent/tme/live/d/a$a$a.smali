.class public Lcom/tencent/tme/live/d/a$a$a;
.super Lcom/tencent/tme/live/p2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tme/live/d/a$a;->a()Lcom/tencent/tme/live/p2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic B:Lcom/tencent/tme/live/d/a$a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/d/a$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    invoke-direct {p0, p2}, Lcom/tencent/tme/live/p2/f;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/p2/c;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/tencent/tme/live/p2/f;->a(Lcom/tencent/tme/live/p2/c;)V

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 2
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    .line 3
    iget-object v1, v1, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/q2/e;

    const-string v2, "fcTL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    iget v4, v2, Lcom/tencent/tme/live/d/a$a;->j:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/tencent/tme/live/d/a$a;->j:I

    check-cast v1, Lcom/tencent/tme/live/q2/i;

    .line 5
    new-instance v11, Lcom/tencent/tme/live/p2/o;

    iget v5, v1, Lcom/tencent/tme/live/q2/i;->d:I

    iget v6, v1, Lcom/tencent/tme/live/q2/i;->e:I

    iget-object v1, v1, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget v7, v1, Lcom/tencent/tme/live/p2/o;->c:I

    iget-boolean v8, v1, Lcom/tencent/tme/live/p2/o;->e:Z

    iget-boolean v9, v1, Lcom/tencent/tme/live/p2/o;->f:Z

    iget-boolean v10, v1, Lcom/tencent/tme/live/p2/o;->g:Z

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/tencent/tme/live/p2/o;-><init>(IIIZZZ)V

    .line 6
    iput-object v11, v2, Lcom/tencent/tme/live/d/a$a;->i:Lcom/tencent/tme/live/p2/o;

    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    invoke-static {v1}, Lcom/tencent/tme/live/d/a$a;->a(Lcom/tencent/tme/live/d/a$a;)V

    :cond_0
    const-string v1, "fdAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "IDAT"

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    iget-object v1, v1, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    .line 7
    iget-object v2, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 8
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/q2/c;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/tme/live/q2/c;

    .line 9
    iget-object v2, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 10
    iget v2, v2, Lcom/tencent/tme/live/q2/c;->a:I

    const/4 v4, 0x4

    sub-int/2addr v2, v4

    sget-object v5, Lcom/tencent/tme/live/q2/b;->b:[B

    .line 11
    invoke-static {v5}, Lcom/tencent/tme/live/q2/b;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lcom/tencent/tme/live/q2/c;-><init>(ILjava/lang/String;Z)V

    .line 12
    iget-object v2, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 13
    iget-object v2, v2, Lcom/tencent/tme/live/q2/c;->d:[B

    iget-object v3, v1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    iget-object v2, v2, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/q2/c;->a(Ljava/io/OutputStream;)V

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    const/4 v1, 0x0

    .line 15
    iput-object v1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    :cond_4
    const-string p1, "IEND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/tme/live/d/a$a$a;->B:Lcom/tencent/tme/live/d/a$a;

    iget-object v0, p1, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/tencent/tme/live/d/a$a;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public b(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
