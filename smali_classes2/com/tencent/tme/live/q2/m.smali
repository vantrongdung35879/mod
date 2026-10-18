.class public Lcom/tencent/tme/live/q2/m;
.super Lcom/tencent/tme/live/q2/z;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "iCCP"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    sget-object v1, Lcom/tencent/tme/live/q2/b;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 2
    :goto_1
    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v0, v1, v2}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    array-length v0, p1

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    new-array v3, v0, [B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "bad compression for ChunkTypeICCP"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
