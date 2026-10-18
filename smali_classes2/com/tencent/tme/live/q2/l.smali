.class public Lcom/tencent/tme/live/q2/l;
.super Lcom/tencent/tme/live/q2/z;


# instance fields
.field public d:[I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "hIST"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tencent/tme/live/q2/l;->d:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/tme/live/q2/l;->d:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/tme/live/q2/l;->d:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Lcom/tencent/tme/live/p2/p;->b([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "only indexed images accept a HIST chunk"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
