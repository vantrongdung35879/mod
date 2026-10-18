.class public Lcom/tencent/tme/live/q2/u;
.super Lcom/tencent/tme/live/q2/z;


# instance fields
.field public d:I

.field public e:[I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "PLTE"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/q2/u;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 6

    iget v0, p1, Lcom/tencent/tme/live/q2/c;->a:I

    div-int/lit8 v0, v0, 0x3

    .line 1
    iput v0, p0, Lcom/tencent/tme/live/q2/u;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/16 v1, 0x100

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tme/live/q2/u;->e:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/tme/live/q2/u;->e:[I

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/tencent/tme/live/q2/u;->d:I

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x2

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x3

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    .line 3
    iget-object v5, p0, Lcom/tencent/tme/live/q2/u;->e:[I

    shl-int/lit8 v4, v4, 0x10

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 4
    :cond_3
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "invalid pallette - nentries="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/q2/u;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
