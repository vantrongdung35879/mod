.class public Lcom/tencent/tme/live/q2/a0;
.super Lcom/tencent/tme/live/q2/d0;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "tEXt"

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

    if-ge v1, v3, :cond_1

    aget-byte v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2, v0, v1}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/q2/d0;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v0, p1

    if-ge v1, v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    :cond_2
    return-void
.end method
