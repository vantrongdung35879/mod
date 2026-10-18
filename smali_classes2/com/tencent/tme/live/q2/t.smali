.class public Lcom/tencent/tme/live/q2/t;
.super Lcom/tencent/tme/live/q2/z;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "pHYs"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 3

    iget v0, p1, Lcom/tencent/tme/live/q2/c;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p2/p;->a([BI)I

    return-void

    :cond_0
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
