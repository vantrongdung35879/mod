.class public abstract Lcom/tencent/tme/live/p2/g;
.super Lcom/tencent/tme/live/p2/c;


# instance fields
.field public final g:Lcom/tencent/tme/live/p2/i;

.field public h:Z

.field public i:[B

.field public j:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/tencent/tme/live/p2/i;)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tme/live/p2/c;-><init>(ILjava/lang/String;JI)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/g;->h:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/tme/live/p2/g;->j:I

    iput-object p5, p0, Lcom/tencent/tme/live/p2/g;->g:Lcom/tencent/tme/live/p2/i;

    const-string p1, "fdAT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/g;->h:Z

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tencent/tme/live/p2/g;->i:[B

    :cond_0
    invoke-virtual {p5, p0}, Lcom/tencent/tme/live/p2/i;->a(Lcom/tencent/tme/live/p2/g;)V

    return-void
.end method


# virtual methods
.method public a(I[BII)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/g;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    :goto_0
    if-ge p1, v0, :cond_0

    if-lez p4, :cond_0

    iget-object v1, p0, Lcom/tencent/tme/live/p2/g;->i:[B

    aget-byte v2, p2, p3

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    if-lez p4, :cond_9

    iget-object p1, p0, Lcom/tencent/tme/live/p2/g;->g:Lcom/tencent/tme/live/p2/i;

    .line 1
    iget-wide v0, p1, Lcom/tencent/tme/live/p2/i;->j:J

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/tme/live/p2/i;->j:J

    const/4 v0, 0x1

    if-lt p4, v0, :cond_9

    iget v1, p1, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v1}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget v1, p1, Lcom/tencent/tme/live/p2/i;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    iget-object v1, p1, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-boolean p2, p1, Lcom/tencent/tme/live/p2/i;->i:Z

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {p1}, Lcom/tencent/tme/live/p2/i;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Lcom/tencent/tme/live/p2/n;

    .line 2
    iget-object p3, p2, Lcom/tencent/tme/live/p2/n;->q:Lcom/tencent/tme/live/p2/j;

    if-nez p3, :cond_3

    .line 3
    iget p3, p2, Lcom/tencent/tme/live/p2/i;->d:I

    .line 4
    iget-object p4, p2, Lcom/tencent/tme/live/p2/n;->p:Lcom/tencent/tme/live/p2/o;

    iget v1, p4, Lcom/tencent/tme/live/p2/o;->b:I

    sub-int/2addr v1, v0

    if-lt p3, v1, :cond_2

    goto :goto_2

    :cond_2
    iget p3, p4, Lcom/tencent/tme/live/p2/o;->j:I

    add-int/2addr p3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lcom/tencent/tme/live/p2/j;->b()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/tencent/tme/live/p2/n;->q:Lcom/tencent/tme/live/p2/j;

    .line 5
    iget-object p4, p3, Lcom/tencent/tme/live/p2/j;->a:Lcom/tencent/tme/live/p2/o;

    iget p4, p4, Lcom/tencent/tme/live/p2/o;->h:I

    .line 6
    iget p3, p3, Lcom/tencent/tme/live/p2/j;->d:I

    mul-int p4, p4, p3

    add-int/lit8 p4, p4, 0x7

    .line 7
    div-int/lit8 p4, p4, 0x8

    add-int/lit8 p3, p4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p3, 0x0

    .line 8
    :goto_3
    iget-boolean p4, p2, Lcom/tencent/tme/live/p2/i;->i:Z

    if-nez p4, :cond_5

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/p2/i;->a(I)V

    .line 9
    :cond_5
    invoke-virtual {p1, p3}, Lcom/tencent/tme/live/p2/i;->a(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/tme/live/p2/i;->b()Z

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should not happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "this should only be called if waitingForMoreInput"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    return-void
.end method
