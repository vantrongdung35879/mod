.class public Lcom/tencent/tme/live/p2/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/tencent/tme/live/p2/o;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/p2/j;->a:Lcom/tencent/tme/live/p2/o;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tme/live/p2/j;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/p2/j;->i:I

    iput v0, p0, Lcom/tencent/tme/live/p2/j;->j:I

    iput p1, p0, Lcom/tencent/tme/live/p2/j;->k:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/p2/j;->a(I)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/p2/j;->b(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/p2/j;->a:Lcom/tencent/tme/live/p2/o;

    iget v0, v0, Lcom/tencent/tme/live/p2/o;->h:I

    .line 1
    iget v1, p0, Lcom/tencent/tme/live/p2/j;->d:I

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x7

    .line 2
    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public a(I)V
    .locals 7

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/tme/live/p2/j;->b:I

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance v0, Lcom/tencent/tme/live/p2/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad interlace pass"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/w;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array p1, v3, [B

    aput-byte v2, p1, v5

    aput-byte v4, p1, v2

    aput-byte v5, p1, v4

    aput-byte v2, p1, v1

    goto :goto_0

    :pswitch_1
    new-array p1, v3, [B

    aput-byte v4, p1, v5

    aput-byte v4, p1, v2

    aput-byte v2, p1, v4

    aput-byte v5, p1, v1

    goto :goto_0

    :pswitch_2
    new-array p1, v3, [B

    aput-byte v4, p1, v5

    aput-byte v3, p1, v2

    aput-byte v5, p1, v4

    aput-byte v4, p1, v1

    goto :goto_0

    :pswitch_3
    new-array p1, v3, [B

    aput-byte v3, p1, v5

    aput-byte v3, p1, v2

    aput-byte v4, p1, v4

    aput-byte v5, p1, v1

    goto :goto_0

    :pswitch_4
    new-array p1, v3, [B

    aput-byte v3, p1, v5

    aput-byte v0, p1, v2

    aput-byte v5, p1, v4

    aput-byte v3, p1, v1

    goto :goto_0

    :pswitch_5
    new-array p1, v3, [B

    aput-byte v0, p1, v5

    aput-byte v0, p1, v2

    aput-byte v3, p1, v4

    aput-byte v5, p1, v1

    goto :goto_0

    :pswitch_6
    new-array p1, v3, [B

    aput-byte v0, p1, v5

    aput-byte v0, p1, v2

    aput-byte v5, p1, v4

    aput-byte v5, p1, v1

    .line 4
    :goto_0
    aget-byte v0, p1, v5

    iput v0, p0, Lcom/tencent/tme/live/p2/j;->f:I

    aget-byte v3, p1, v2

    iput v3, p0, Lcom/tencent/tme/live/p2/j;->e:I

    aget-byte v4, p1, v4

    iput v4, p0, Lcom/tencent/tme/live/p2/j;->h:I

    aget-byte p1, p1, v1

    iput p1, p0, Lcom/tencent/tme/live/p2/j;->g:I

    iget-object v1, p0, Lcom/tencent/tme/live/p2/j;->a:Lcom/tencent/tme/live/p2/o;

    iget v6, v1, Lcom/tencent/tme/live/p2/o;->b:I

    if-le v6, p1, :cond_1

    add-int/2addr v6, v3

    sub-int/2addr v6, v2

    sub-int/2addr v6, p1

    div-int/2addr v6, v3

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iput v6, p0, Lcom/tencent/tme/live/p2/j;->c:I

    iget p1, v1, Lcom/tencent/tme/live/p2/o;->a:I

    if-le p1, v4, :cond_2

    add-int/2addr p1, v0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v4

    div-int/2addr p1, v0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/tencent/tme/live/p2/j;->d:I

    if-nez p1, :cond_3

    iput v5, p0, Lcom/tencent/tme/live/p2/j;->c:I

    :cond_3
    iget p1, v1, Lcom/tencent/tme/live/p2/o;->d:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/tme/live/p2/j;->i:I

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->e:I

    mul-int p1, p1, v0

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/tme/live/p2/j;->j:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/p2/j;->a:Lcom/tencent/tme/live/p2/o;

    iget v0, v0, Lcom/tencent/tme/live/p2/o;->b:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/w;

    const-string v0, "bad row - this should not happen"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/w;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tme/live/p2/j;->k:I

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->c:I

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/tencent/tme/live/p2/j;->i:I

    sub-int/2addr v0, v1

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/tencent/tme/live/p2/j;->b(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tencent/tme/live/p2/j;->b:I

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/p2/j;->a(I)V

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->c:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/tencent/tme/live/p2/j;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tme/live/p2/j;->k:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/j;->b()Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/tencent/tme/live/p2/j;->b(I)V

    :goto_1
    return v1
.end method
