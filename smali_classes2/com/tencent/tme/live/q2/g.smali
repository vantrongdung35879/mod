.class public Lcom/tencent/tme/live/q2/g;
.super Lcom/tencent/tme/live/q2/z;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "bKGD"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v1, v0, Lcom/tencent/tme/live/p2/o;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-static {p1, v2}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    aget-byte p1, p1, v2

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

    :goto_0
    return-void
.end method
