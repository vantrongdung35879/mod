.class public Lcom/tencent/tme/live/q2/f0;
.super Lcom/tencent/tme/live/q2/d0;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "zTXt"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/d0;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-byte v3, v2, v1

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :cond_1
    if-ltz v1, :cond_3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_3

    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tme/live/q2/d0;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x2

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x2

    invoke-static {p1, v2, v3, v0}, Lcom/tencent/tme/live/q2/b;->a([BIIZ)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/tme/live/q2/b;->a([B)Ljava/lang/String;

    return-void

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "bad zTXt chunk: unknown compression method"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "bad zTXt chunk: no separator found"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
