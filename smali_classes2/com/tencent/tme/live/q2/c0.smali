.class public Lcom/tencent/tme/live/q2/c0;
.super Lcom/tencent/tme/live/q2/z;


# instance fields
.field public d:[I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "tRNS"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tencent/tme/live/q2/c0;->d:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v1, v0, Lcom/tencent/tme/live/p2/o;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {p1, v2}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v0, v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/tencent/tme/live/q2/c0;->d:[I

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/q2/c0;->d:[I

    iget-object v3, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {v0, v2}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    :cond_2
    :goto_1
    return-void
.end method
