.class public Lcom/tencent/tme/live/p2/n;
.super Lcom/tencent/tme/live/p2/i;


# static fields
.field public static final t:Ljava/util/logging/Logger;


# instance fields
.field public n:[B

.field public o:[B

.field public final p:Lcom/tencent/tme/live/p2/o;

.field public final q:Lcom/tencent/tme/live/p2/j;

.field public final r:Lcom/tencent/tme/live/p2/z;

.field public s:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/p2/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/p2/n;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/tencent/tme/live/p2/o;Lcom/tencent/tme/live/p2/j;Ljava/util/zip/Inflater;[B)V
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/tencent/tme/live/p2/j;->a()I

    move-result p5

    goto :goto_0

    :cond_0
    iget p5, p3, Lcom/tencent/tme/live/p2/o;->j:I

    :goto_0
    add-int/lit8 p5, p5, 0x1

    move v3, p5

    iget p5, p3, Lcom/tencent/tme/live/p2/o;->j:I

    add-int/lit8 v4, p5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tme/live/p2/i;-><init>(Ljava/lang/String;ZIILjava/util/zip/Inflater;[B)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/tencent/tme/live/p2/n;->s:[I

    iput-object p3, p0, Lcom/tencent/tme/live/p2/n;->p:Lcom/tencent/tme/live/p2/o;

    iput-object p4, p0, Lcom/tencent/tme/live/p2/n;->q:Lcom/tencent/tme/live/p2/j;

    new-instance p1, Lcom/tencent/tme/live/p2/z;

    invoke-direct {p1, p3, p4}, Lcom/tencent/tme/live/p2/z;-><init>(Lcom/tencent/tme/live/p2/o;Lcom/tencent/tme/live/p2/j;)V

    iput-object p1, p0, Lcom/tencent/tme/live/p2/n;->r:Lcom/tencent/tme/live/p2/z;

    sget-object p1, Lcom/tencent/tme/live/p2/n;->t:Ljava/util/logging/Logger;

    const-string p2, "Creating IDAT set "

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v1}, Lcom/tencent/tme/live/p2/h;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/tencent/tme/live/p2/i;->e:I

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/i;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    iput-object v0, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_1
    iput-object v0, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iput-object v0, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    return-void
.end method

.method public d()V
    .locals 12

    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->r:Lcom/tencent/tme/live/p2/z;

    .line 1
    iget v1, p0, Lcom/tencent/tme/live/p2/i;->d:I

    .line 2
    iget-boolean v2, v0, Lcom/tencent/tme/live/p2/z;->c:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/tencent/tme/live/p2/z;->b:Lcom/tencent/tme/live/p2/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/tencent/tme/live/p2/z;->b:Lcom/tencent/tme/live/p2/j;

    iget v2, v1, Lcom/tencent/tme/live/p2/j;->f:I

    .line 3
    iget v2, v1, Lcom/tencent/tme/live/p2/j;->i:I

    .line 4
    iput v2, v0, Lcom/tencent/tme/live/p2/z;->d:I

    .line 5
    iget v1, v1, Lcom/tencent/tme/live/p2/j;->d:I

    .line 6
    iget-object v2, v0, Lcom/tencent/tme/live/p2/z;->a:Lcom/tencent/tme/live/p2/o;

    iget v2, v2, Lcom/tencent/tme/live/p2/o;->h:I

    mul-int v2, v2, v1

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/tencent/tme/live/p2/z;->e:I

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/tencent/tme/live/p2/z;->d:I

    iget-object v1, v0, Lcom/tencent/tme/live/p2/z;->a:Lcom/tencent/tme/live/p2/o;

    iget v2, v1, Lcom/tencent/tme/live/p2/o;->b:I

    iget v1, v1, Lcom/tencent/tme/live/p2/o;->j:I

    iput v1, v0, Lcom/tencent/tme/live/p2/z;->e:I

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->r:Lcom/tencent/tme/live/p2/z;

    iget v1, v0, Lcom/tencent/tme/live/p2/z;->e:I

    .line 8
    iget-object v2, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    if-eqz v2, :cond_1

    array-length v2, v2

    iget-object v3, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    array-length v3, v2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    :cond_2
    iget v0, v0, Lcom/tencent/tme/live/p2/z;->d:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v3, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    iput-object v3, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iput-object v0, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v0, v0, v2

    sget-object v3, Lcom/tencent/tme/live/p2/l;->b:Lcom/tencent/tme/live/p2/l;

    const-string v3, "Filter type "

    if-ltz v0, :cond_13

    const/4 v4, 0x4

    if-gt v0, v4, :cond_13

    .line 9
    sget-object v5, Lcom/tencent/tme/live/p2/l;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tme/live/p2/l;

    .line 10
    iget-object v6, p0, Lcom/tencent/tme/live/p2/n;->s:[I

    aget v7, v6, v0

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aput v7, v6, v0

    iget-object v6, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v7, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v7, v7, v2

    aput-byte v7, v6, v2

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_11

    if-eq v5, v8, :cond_f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_e

    const/4 v7, 0x3

    if-eq v5, v7, :cond_c

    if-ne v5, v4, :cond_b

    .line 11
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->p:Lcom/tencent/tme/live/p2/o;

    iget v0, v0, Lcom/tencent/tme/live/p2/o;->i:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_1
    if-gt v8, v1, :cond_12

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v6, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v6, v6, v8

    iget-object v7, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    sget-object v9, Lcom/tencent/tme/live/p2/p;->a:Ljava/nio/charset/Charset;

    add-int v9, v3, v7

    sub-int/2addr v9, v4

    if-lt v9, v3, :cond_6

    sub-int v10, v9, v3

    goto :goto_4

    :cond_6
    sub-int v10, v3, v9

    :goto_4
    if-lt v9, v7, :cond_7

    sub-int v11, v9, v7

    goto :goto_5

    :cond_7
    sub-int v11, v7, v9

    :goto_5
    if-lt v9, v4, :cond_8

    sub-int/2addr v9, v4

    goto :goto_6

    :cond_8
    sub-int v9, v4, v9

    :goto_6
    if-gt v10, v11, :cond_9

    if-gt v10, v9, :cond_9

    goto :goto_7

    :cond_9
    if-gt v11, v9, :cond_a

    move v3, v7

    goto :goto_7

    :cond_a
    move v3, v4

    :goto_7
    add-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_b
    new-instance v1, Lcom/tencent/tme/live/p2/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not implemented"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_c
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->p:Lcom/tencent/tme/live/p2/o;

    iget v0, v0, Lcom/tencent/tme/live/p2/o;->i:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_8
    if-gt v8, v1, :cond_12

    if-lez v0, :cond_d

    iget-object v3, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    :goto_9
    iget-object v4, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v5, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v5, v5, v8

    iget-object v7, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    div-int/2addr v3, v6

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    :goto_a
    if-gt v8, v1, :cond_12

    .line 13
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v2, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v2, v2, v8

    iget-object v3, p0, Lcom/tencent/tme/live/p2/n;->o:[B

    aget-byte v3, v3, v8

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x1

    .line 14
    :goto_b
    iget-object v2, p0, Lcom/tencent/tme/live/p2/n;->p:Lcom/tencent/tme/live/p2/o;

    iget v2, v2, Lcom/tencent/tme/live/p2/o;->i:I

    if-gt v0, v2, :cond_10

    iget-object v2, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v3, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_10
    add-int/2addr v2, v8

    const/4 v0, 0x1

    :goto_c
    if-gt v2, v1, :cond_12

    iget-object v3, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v4, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v4, v4, v2

    aget-byte v5, v3, v0

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v8

    goto :goto_c

    :cond_11
    :goto_d
    if-gt v8, v1, :cond_12

    .line 15
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->n:[B

    iget-object v2, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    aget-byte v2, v2, v8

    aput-byte v2, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 16
    :cond_12
    iget-object v0, p0, Lcom/tencent/tme/live/p2/n;->r:Lcom/tencent/tme/live/p2/z;

    iget v0, v0, Lcom/tencent/tme/live/p2/z;->e:I

    return-void

    .line 17
    :cond_13
    new-instance v1, Lcom/tencent/tme/live/p2/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw v1
.end method
