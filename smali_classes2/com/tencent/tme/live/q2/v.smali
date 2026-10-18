.class public Lcom/tencent/tme/live/q2/v;
.super Lcom/tencent/tme/live/q2/z;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "sBIT"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 6

    iget v0, p1, Lcom/tencent/tme/live/q2/c;->a:I

    .line 1
    iget-object v1, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v2, v1, Lcom/tencent/tme/live/p2/o;->f:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    iget-boolean v1, v1, Lcom/tencent/tme/live/p2/o;->e:Z

    if-eqz v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-ne v0, v5, :cond_4

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 2
    iget-object v1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v1, v0}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->e:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {p1, v4}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v1, v0}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v0, v4}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->e:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {p1, v3}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Lcom/tencent/tme/live/p2/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad chunk length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw v0
.end method
