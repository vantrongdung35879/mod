.class public Lcom/tencent/tme/live/p2/i;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/zip/Inflater;

.field public final g:Z

.field public h:Lcom/tencent/tme/live/p2/g;

.field public final i:Z

.field public j:J

.field public k:J

.field public l:I

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/zip/Inflater;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/tme/live/p2/i;->j:J

    iput-wide v1, p0, Lcom/tencent/tme/live/p2/i;->k:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tme/live/p2/i;->l:I

    iput-object p1, p0, Lcom/tencent/tme/live/p2/i;->m:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/tme/live/p2/i;->i:Z

    iput p3, p0, Lcom/tencent/tme/live/p2/i;->c:I

    if-lt p3, v0, :cond_2

    if-lt p4, p3, :cond_2

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/i;->g:Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/i;->g:Z

    :goto_0
    if-eqz p6, :cond_1

    array-length p1, p6

    if-lt p1, p3, :cond_1

    goto :goto_1

    :cond_1
    new-array p6, p4, [B

    :goto_1
    iput-object p6, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    iput v1, p0, Lcom/tencent/tme/live/p2/i;->d:I

    iput v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/tencent/tme/live/p2/i;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/i;->a()V

    throw p1

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/v;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "bad inital row len "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/p2/i;->b:I

    iget v1, p0, Lcom/tencent/tme/live/p2/i;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/tme/live/p2/i;->d:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/tencent/tme/live/p2/i;->c:I

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/i;->c()V

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/tencent/tme/live/p2/i;->e:I

    iput p1, p0, Lcom/tencent/tme/live/p2/i;->c:I

    iget-boolean p1, p0, Lcom/tencent/tme/live/p2/i;->i:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/i;->b()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/tme/live/p2/g;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->m:Ljava/lang/String;

    .line 1
    iget-object v1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/p2/i;->h:Lcom/tencent/tme/live/p2/g;

    iget p1, p0, Lcom/tencent/tme/live/p2/i;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/p2/i;->l:I

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/p2/x;

    const-string v1, "Bad chunk inside IdatSet, id:"

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object p1, p1, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 4
    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expected:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/tme/live/p2/i;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Z
    .locals 7

    :try_start_0
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-static {v0}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    iget v3, p0, Lcom/tencent/tme/live/p2/i;->c:I

    if-ge v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    :cond_2
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->b:I

    iget v3, p0, Lcom/tencent/tme/live/p2/i;->c:I

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lcom/tencent/tme/live/p2/i;->a:[B

    iget v4, p0, Lcom/tencent/tme/live/p2/i;->b:I

    iget v5, p0, Lcom/tencent/tme/live/p2/i;->c:I

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget v3, p0, Lcom/tencent/tme/live/p2/i;->b:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/tencent/tme/live/p2/i;->b:I

    iget-wide v3, p0, Lcom/tencent/tme/live/p2/i;->k:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tencent/tme/live/p2/i;->k:J

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tme/live/p2/x;

    const-string v2, "error decompressing zlib stream "

    invoke-direct {v1, v2, v0}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_0
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->b:I

    iget v3, p0, Lcom/tencent/tme/live/p2/i;->c:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/tme/live/p2/i;->f:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->b:I

    if-lez v0, :cond_6

    :goto_1
    const/4 v0, 0x2

    goto :goto_2

    :cond_6
    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/i;->d()V

    return v4

    :cond_7
    return v2

    :cond_8
    new-instance v0, Lcom/tencent/tme/live/p2/v;

    const-string v1, "invalid state"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/i;->a()V

    throw v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/tencent/tme/live/p2/i;->e:I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idatSet : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/p2/i;->h:Lcom/tencent/tme/live/p2/g;

    .line 1
    iget-object v2, v2, Lcom/tencent/tme/live/p2/c;->b:Lcom/tencent/tme/live/q2/c;

    .line 2
    iget-object v2, v2, Lcom/tencent/tme/live/q2/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v2}, Lcom/tencent/tme/live/p2/h;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tme/live/p2/i;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tme/live/p2/i;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/tme/live/p2/i;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
