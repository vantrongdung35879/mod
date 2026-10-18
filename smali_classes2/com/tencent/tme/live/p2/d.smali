.class public abstract Lcom/tencent/tme/live/p2/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/p2/m;
.implements Ljava/io/Closeable;


# static fields
.field public static final m:Ljava/util/logging/Logger;


# instance fields
.field public final a:I

.field public b:[B

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J

.field public i:Lcom/tencent/tme/live/p2/i;

.field public j:Lcom/tencent/tme/live/p2/c;

.field public k:J

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/p2/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/p2/d;->m:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/tencent/tme/live/p2/p;->a()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/p2/d;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/p2/d;->c:I

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->d:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->e:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->f:Z

    iput v0, p0, Lcom/tencent/tme/live/p2/d;->g:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/tme/live/p2/d;->l:I

    array-length p1, p1

    iput p1, p0, Lcom/tencent/tme/live/p2/d;->a:I

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->d:Z

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->f:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    return v0

    :cond_1
    if-ltz p3, :cond_d

    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/d;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tencent/tme/live/p2/d;->j:Lcom/tencent/tme/live/p2/c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/tme/live/p2/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/p2/d;->j:Lcom/tencent/tme/live/p2/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tme/live/p2/c;->a([BII)I

    move-result p1

    if-gez p1, :cond_3

    return v1

    :cond_3
    iget-wide p2, p0, Lcom/tencent/tme/live/p2/d;->h:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tencent/tme/live/p2/d;->h:J

    goto/16 :goto_7

    :cond_4
    :goto_0
    iget v1, p0, Lcom/tencent/tme/live/p2/d;->c:I

    rsub-int/lit8 v2, v1, 0x8

    if-le v2, p3, :cond_5

    goto :goto_1

    :cond_5
    move p3, v2

    :goto_1
    iget-object v2, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tencent/tme/live/p2/d;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tencent/tme/live/p2/d;->c:I

    iget-wide v1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    int-to-long v4, p3

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    const/16 p2, 0x8

    if-ne p1, p2, :cond_c

    iget p1, p0, Lcom/tencent/tme/live/p2/d;->g:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/tencent/tme/live/p2/d;->g:I

    iget-object p1, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    invoke-static {p1, v0}, Lcom/tencent/tme/live/p2/p;->c([BI)I

    move-result p1

    iget-object v1, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    sget-object v2, Lcom/tencent/tme/live/q2/b;->a:[B

    if-eqz v1, :cond_7

    .line 1
    array-length v2, v1

    if-ge v2, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 p2, 0x4

    invoke-static {v1, p2, p2}, Lcom/tencent/tme/live/q2/b;->a([BII)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    :goto_2
    const-string p2, "?"

    .line 2
    :goto_3
    iget-wide v1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/tencent/tme/live/p2/d;->a(ILjava/lang/String;J)V

    iput v0, p0, Lcom/tencent/tme/live/p2/d;->c:I

    goto :goto_6

    :cond_8
    iget v1, p0, Lcom/tencent/tme/live/p2/d;->a:I

    iget v2, p0, Lcom/tencent/tme/live/p2/d;->c:I

    sub-int/2addr v1, v2

    if-le v1, p3, :cond_9

    goto :goto_4

    :cond_9
    move p3, v1

    :goto_4
    iget-object v1, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tencent/tme/live/p2/d;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tencent/tme/live/p2/d;->c:I

    iget p2, p0, Lcom/tencent/tme/live/p2/d;->a:I

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lcom/tencent/tme/live/p2/d;->b:[B

    .line 3
    invoke-static {}, Lcom/tencent/tme/live/p2/p;->a()[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 4
    iput v0, p0, Lcom/tencent/tme/live/p2/d;->c:I

    iput-boolean v3, p0, Lcom/tencent/tme/live/p2/d;->d:Z

    goto :goto_5

    .line 5
    :cond_a
    new-instance p2, Lcom/tencent/tme/live/p2/u;

    const-string p3, "Bad signature:"

    invoke-static {p3}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/u;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_b
    :goto_5
    iget-wide p1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/tme/live/p2/d;->h:J

    :cond_c
    :goto_6
    move p1, p3

    :goto_7
    return p1

    :cond_d
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "This should not happen. Bad length: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/lang/String;)Lcom/tencent/tme/live/p2/i;
.end method

.method public a(ILjava/lang/String;J)V
    .locals 11

    sget-object v0, Lcom/tencent/tme/live/p2/d;->m:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New chunk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/tencent/tme/live/q2/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    if-ltz p1, :cond_c

    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/tme/live/p2/d;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/tme/live/p2/d;->k:J

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/p2/d;->a(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tme/live/p2/d;->b(ILjava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/p2/d;->b(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    .line 13
    iget v3, v3, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v3}, Lcom/tencent/tme/live/p2/h;->a(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    .line 15
    iget v5, v3, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v5}, Lcom/tencent/tme/live/p2/h;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/tencent/tme/live/p2/i;->m:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    iget v5, v3, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v5}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v3, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v5}, Lcom/tencent/tme/live/p2/h;->a(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/tencent/tme/live/p2/i;->a()V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p3, "Unexpected chunk "

    const-string p4, " while "

    invoke-static {p3, p2, p4}, Lcom/tencent/tme/live/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v3, Lcom/tencent/tme/live/p2/i;->m:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " set is not done"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_9

    if-nez v1, :cond_9

    if-nez v3, :cond_8

    .line 16
    iget-object v1, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    if-eqz v1, :cond_7

    .line 17
    iget v1, v1, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v1}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "new IDAT-like chunk when previous was not done"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-virtual {p0, p2}, Lcom/tencent/tme/live/p2/d;->a(Ljava/lang/String;)Lcom/tencent/tme/live/p2/i;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    :cond_8
    new-instance v1, Lcom/tencent/tme/live/p2/d$a;

    iget-object v9, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, v0

    move-wide v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/tencent/tme/live/p2/d$a;-><init>(Lcom/tencent/tme/live/p2/d;ILjava/lang/String;ZJLcom/tencent/tme/live/p2/i;)V

    iput-object v1, p0, Lcom/tencent/tme/live/p2/d;->j:Lcom/tencent/tme/live/p2/c;

    goto :goto_4

    .line 19
    :cond_9
    new-instance v9, Lcom/tencent/tme/live/p2/e;

    if-eqz v1, :cond_a

    const/4 v4, 0x3

    const/4 v8, 0x3

    goto :goto_3

    :cond_a
    const/4 v8, 0x1

    :goto_3
    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tme/live/p2/e;-><init>(Lcom/tencent/tme/live/p2/d;ILjava/lang/String;JI)V

    .line 20
    iput-object v9, p0, Lcom/tencent/tme/live/p2/d;->j:Lcom/tencent/tme/live/p2/c;

    :goto_4
    iget-object p1, p0, Lcom/tencent/tme/live/p2/d;->j:Lcom/tencent/tme/live/p2/c;

    if-eqz p1, :cond_b

    if-nez v0, :cond_b

    .line 21
    iput-boolean v10, p1, Lcom/tencent/tme/live/p2/c;->e:Z

    :cond_b
    return-void

    .line 22
    :cond_c
    new-instance p2, Lcom/tencent/tme/live/p2/x;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Bad chunk len: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p3, "Bad chunk id: "

    invoke-static {p3, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/tencent/tme/live/p2/c;)V
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/p2/d;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    const-string v2, "IHDR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bad first chunk: "

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v3, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 10
    iget-object v3, v3, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/tencent/tme/live/p2/d;->l:I

    invoke-static {v2}, Lcom/tencent/tme/live/p2/k;->a(I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/tencent/tme/live/p2/d;->m:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 12
    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/tencent/tme/live/p2/d;->e:Z

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/d;->close()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->e:Z

    return v0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/d;->i:Lcom/tencent/tme/live/p2/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/i;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/d;->f:Z

    return-void
.end method
