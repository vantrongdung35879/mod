.class public abstract Lcom/tencent/tme/live/p2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/p2/m;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:I

.field public final b:Lcom/tencent/tme/live/q2/c;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/p2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/p2/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/p2/c;->c:I

    iput v0, p0, Lcom/tencent/tme/live/p2/c;->d:I

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    if-ltz p1, :cond_2

    iput p5, p0, Lcom/tencent/tme/live/p2/c;->a:I

    new-instance v1, Lcom/tencent/tme/live/q2/c;

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, p1, p2, v3}, Lcom/tencent/tme/live/q2/c;-><init>(ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    invoke-virtual {v1, p3, p4}, Lcom/tencent/tme/live/q2/c;->a(J)V

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/c;->e:Z

    return-void

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Bad chunk paramenters: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/tencent/tme/live/p2/b;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([BII)I
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-ltz p3, :cond_11

    iget v1, p0, Lcom/tencent/tme/live/p2/c;->c:I

    const/4 v2, 0x4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tencent/tme/live/p2/c;->d:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/c;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget-object v3, v1, Lcom/tencent/tme/live/q2/c;->b:[B

    invoke-virtual {v1, v3, v0, v2}, Lcom/tencent/tme/live/q2/c;->a([BII)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget v3, v1, Lcom/tencent/tme/live/q2/c;->a:I

    iget v4, p0, Lcom/tencent/tme/live/p2/c;->c:I

    sub-int/2addr v3, v4

    if-le v3, p3, :cond_2

    move v3, p3

    :cond_2
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gtz v3, :cond_3

    iget v6, p0, Lcom/tencent/tme/live/p2/c;->d:I

    if-nez v6, :cond_7

    :cond_3
    iget-boolean v6, p0, Lcom/tencent/tme/live/p2/c;->e:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/tencent/tme/live/p2/c;->a:I

    if-eq v6, v5, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {v1, p1, p2, v3}, Lcom/tencent/tme/live/q2/c;->a([BII)V

    :cond_4
    iget v1, p0, Lcom/tencent/tme/live/p2/c;->a:I

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget-object v1, v1, Lcom/tencent/tme/live/q2/c;->d:[B

    if-eq v1, p1, :cond_6

    if-lez v3, :cond_6

    iget v6, p0, Lcom/tencent/tme/live/p2/c;->c:I

    invoke-static {p1, p2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/tencent/tme/live/p2/c;->c:I

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/tencent/tme/live/p2/c;->a(I[BII)V

    :cond_6
    :goto_0
    iget v1, p0, Lcom/tencent/tme/live/p2/c;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/tencent/tme/live/p2/c;->c:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    :cond_7
    iget v1, p0, Lcom/tencent/tme/live/p2/c;->c:I

    iget-object v6, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget v7, v6, Lcom/tencent/tme/live/q2/c;->a:I

    if-ne v1, v7, :cond_e

    iget v1, p0, Lcom/tencent/tme/live/p2/c;->d:I

    rsub-int/lit8 v7, v1, 0x4

    if-le v7, p3, :cond_8

    goto :goto_1

    :cond_8
    move p3, v7

    :goto_1
    if-lez p3, :cond_d

    iget-object v6, v6, Lcom/tencent/tme/live/q2/c;->f:[B

    if-eq p1, v6, :cond_9

    invoke-static {p1, p2, v6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget p1, p0, Lcom/tencent/tme/live/p2/c;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tencent/tme/live/p2/c;->d:I

    if-ne p1, v2, :cond_d

    iget-boolean p1, p0, Lcom/tencent/tme/live/p2/c;->e:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/tencent/tme/live/p2/c;->a:I

    if-ne p1, v5, :cond_a

    iget-object p1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget-object p2, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    iget v1, p1, Lcom/tencent/tme/live/q2/c;->a:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/tme/live/q2/c;->a([BII)V

    :cond_a
    iget-object p1, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 1
    iget-object p2, p1, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int p2, v6

    iget-object v1, p1, Lcom/tencent/tme/live/q2/c;->f:[B

    invoke-static {v1, v0}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result v1

    if-ne p2, v1, :cond_b

    goto :goto_2

    :cond_b
    iget-object p3, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    iget-wide v6, p1, Lcom/tencent/tme/live/q2/c;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    aput-object p1, v2, v5

    aput-object v1, v2, v4

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const-string p1, "Bad CRC in chunk: %s (offset:%d). Expected:%x Got:%x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/tencent/tme/live/p2/t;

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/t;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_c
    :goto_2
    sget-object p1, Lcom/tencent/tme/live/p2/c;->f:Ljava/util/logging/Logger;

    const-string p2, "Chunk done"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/c;->b()V

    :cond_d
    move v0, p3

    :cond_e
    if-gtz v3, :cond_10

    if-lez v0, :cond_f

    goto :goto_3

    :cond_f
    const/4 p1, -0x1

    goto :goto_4

    :cond_10
    :goto_3
    add-int p1, v3, v0

    :goto_4
    return p1

    :cond_11
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string p2, "negative length??"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(I[BII)V
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tme/live/p2/c;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract b()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/tencent/tme/live/p2/c;

    iget-object v2, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    return v1

    :cond_3
    invoke-virtual {v2, p1}, Lcom/tencent/tme/live/q2/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tme/live/q2/c;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    invoke-virtual {v0}, Lcom/tencent/tme/live/q2/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
