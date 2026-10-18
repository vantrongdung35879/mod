.class public Lcom/tencent/tme/live/q2/q;
.super Lcom/tencent/tme/live/q2/d0;


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "iTXt"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/d0;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/q2/q;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_3

    aget-byte v6, v5, v3

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    if-ne v4, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v3, v7

    goto :goto_0

    :cond_3
    :goto_2
    if-ne v4, v0, :cond_8

    aget v0, v1, v2

    invoke-static {v5, v2, v0}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/q2/d0;->d:Ljava/lang/String;

    aget v0, v1, v2

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    aget-byte v3, v4, v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/tencent/tme/live/q2/q;->e:Z

    const/4 v5, 0x2

    add-int/2addr v0, v5

    if-eqz v3, :cond_6

    aget-byte v3, v4, v0

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    aget v3, v1, v7

    sub-int/2addr v3, v0

    invoke-static {v4, v0, v3}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    aget v3, v1, v7

    add-int/lit8 v4, v3, 0x1

    aget v6, v1, v5

    sub-int/2addr v6, v3

    sub-int/2addr v6, v7

    .line 1
    new-instance v3, Ljava/lang/String;

    sget-object v8, Lcom/tencent/tme/live/p2/p;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2
    aget v0, v1, v5

    add-int/2addr v0, v7

    iget-boolean v1, p0, Lcom/tencent/tme/live/q2/q;->e:Z

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/tme/live/q2/b;->a([BIIZ)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/tme/live/p2/p;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5

    .line 4
    :cond_7
    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    array-length v1, p1

    sub-int/2addr v1, v0

    .line 5
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/tencent/tme/live/p2/p;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_5
    return-void

    .line 6
    :cond_8
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string v0, "Bad formed PngChunkITXT chunk"

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method
