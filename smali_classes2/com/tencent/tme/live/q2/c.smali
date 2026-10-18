.class public Lcom/tencent/tme/live/q2/c;
.super Ljava/lang/Object;


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/lang/String;

.field public d:[B

.field public e:J

.field public f:[B

.field public g:Ljava/util/zip/CRC32;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/q2/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/q2/c;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/q2/c;->d:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tme/live/q2/c;->e:J

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tencent/tme/live/q2/c;->f:[B

    iput p1, p0, Lcom/tencent/tme/live/q2/c;->a:I

    iput-object p2, p0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/tme/live/q2/b;->d(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    const-string p3, "Bad id chunk: must be ascii letters "

    invoke-static {p3, p2}, Lcom/tencent/tme/live/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tme/live/q2/c;->a()V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->d:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lcom/tencent/tme/live/q2/c;->a:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/q2/c;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tme/live/q2/c;->d:[B

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/tme/live/q2/c;->e:J

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    array-length v0, v0

    const-string v1, "]"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/tencent/tme/live/q2/c;->a:I

    .line 2
    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/tme/live/p2/p;->a(I[BI)V

    .line 3
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    .line 5
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6
    iget v0, p0, Lcom/tencent/tme/live/q2/c;->a:I

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tme/live/q2/c;->d:[B

    if-eqz v3, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {p1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/tencent/tme/live/p2/y;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p1, Lcom/tencent/tme/live/p2/y;

    const-string v0, "cannot write chunk, raw chunk data is null ["

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/zip/CRC32;->update([BII)V

    iget v0, p0, Lcom/tencent/tme/live/q2/c;->a:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    iget-object v3, p0, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->f:[B

    invoke-static {v1, v0, v4}, Lcom/tencent/tme/live/p2/p;->a(I[BI)V

    .line 10
    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->f:[B

    sget-object v1, Lcom/tencent/tme/live/p2/p;->a:Ljava/nio/charset/Charset;

    .line 11
    :try_start_3
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Lcom/tencent/tme/live/p2/y;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 12
    new-instance v0, Lcom/tencent/tme/live/p2/y;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 13
    new-instance v0, Lcom/tencent/tme/live/p2/y;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :cond_3
    new-instance p1, Lcom/tencent/tme/live/p2/y;

    const-string v0, "bad chunkid ["

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tme/live/p2/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->g:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tencent/tme/live/q2/c;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/tencent/tme/live/q2/c;

    iget-object v2, p0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/tencent/tme/live/q2/c;->e:J

    iget-wide v4, p1, Lcom/tencent/tme/live/q2/c;->e:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/tencent/tme/live/q2/c;->e:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "chunkid="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/q2/c;->b:[B

    invoke-static {v1}, Lcom/tencent/tme/live/q2/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/q2/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
