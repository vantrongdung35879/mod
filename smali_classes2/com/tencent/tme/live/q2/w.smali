.class public Lcom/tencent/tme/live/q2/w;
.super Lcom/tencent/tme/live/q2/r;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:[I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "sPLT"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/r;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-lez v1, :cond_5

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_5

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tme/live/q2/w;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    move-result v2

    iput v2, p0, Lcom/tencent/tme/live/q2/w;->e:I

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :cond_2
    const/16 v2, 0xa

    :goto_2
    div-int/2addr v3, v2

    mul-int/lit8 v2, v3, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/tme/live/q2/w;->f:[I

    move v2, v1

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    iget v5, p0, Lcom/tencent/tme/live/q2/w;->e:I

    if-ne v5, v4, :cond_3

    iget-object v5, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v2}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    move-result v5

    iget-object v7, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v8, v2, 0x2

    invoke-static {v7, v6}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    move-result v6

    iget-object v7, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v9, v2, 0x3

    invoke-static {v7, v8}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    move-result v7

    iget-object v8, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v2, v2, 0x4

    invoke-static {v8, v9}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    move-result v8

    goto :goto_4

    :cond_3
    iget-object v5, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v5, v2}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v7, v6}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v6

    add-int/lit8 v7, v2, 0x4

    iget-object v8, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v8, v7}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v7

    add-int/lit8 v8, v2, 0x6

    iget-object v9, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v9, v8}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v8

    add-int/lit8 v2, v2, 0x8

    :goto_4
    iget-object v9, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v9, v2}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v9

    add-int/lit8 v2, v2, 0x2

    iget-object v10, p0, Lcom/tencent/tme/live/q2/w;->f:[I

    add-int/lit8 v11, v1, 0x1

    aput v5, v10, v1

    add-int/lit8 v5, v1, 0x2

    aput v6, v10, v11

    add-int/lit8 v6, v1, 0x3

    aput v7, v10, v5

    add-int/lit8 v5, v1, 0x4

    aput v8, v10, v6

    add-int/lit8 v1, v1, 0x5

    aput v9, v10, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "bad sPLT chunk: no separator found"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
