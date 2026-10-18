.class public Lcom/tencent/tme/live/q2/p;
.super Lcom/tencent/tme/live/q2/z;


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/p2/o;)V
    .locals 1

    const-string v0, "IHDR"

    invoke-direct {p0, v0, p1}, Lcom/tencent/tme/live/q2/z;-><init>(Ljava/lang/String;Lcom/tencent/tme/live/p2/o;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/q2/p;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/q2/c;)V
    .locals 2

    iget v0, p1, Lcom/tencent/tme/live/q2/c;->a:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Lcom/tencent/tme/live/q2/c;->d:[B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2
    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->b(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->d:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->b(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->e:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->f:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->g:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->h:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->i:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/InputStream;)I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/q2/p;->j:I

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/tme/live/p2/v;

    const-string v1, "Bad IDHR len "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/tencent/tme/live/q2/c;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/v;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tme/live/q2/e;->b:Lcom/tencent/tme/live/p2/o;

    iget v1, v0, Lcom/tencent/tme/live/p2/o;->a:I

    .line 1
    iput v1, p0, Lcom/tencent/tme/live/q2/p;->d:I

    .line 2
    iget v1, v0, Lcom/tencent/tme/live/p2/o;->b:I

    .line 3
    iput v1, p0, Lcom/tencent/tme/live/q2/p;->e:I

    .line 4
    iget v1, v0, Lcom/tencent/tme/live/p2/o;->c:I

    .line 5
    iput v1, p0, Lcom/tencent/tme/live/q2/p;->f:I

    .line 6
    iget-boolean v1, v0, Lcom/tencent/tme/live/p2/o;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, v0, Lcom/tencent/tme/live/p2/o;->g:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-boolean v0, v0, Lcom/tencent/tme/live/p2/o;->f:Z

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 7
    :cond_2
    iput v1, p0, Lcom/tencent/tme/live/q2/p;->g:I

    .line 8
    iput v2, p0, Lcom/tencent/tme/live/q2/p;->h:I

    .line 9
    iput v2, p0, Lcom/tencent/tme/live/q2/p;->i:I

    .line 10
    iput v2, p0, Lcom/tencent/tme/live/q2/p;->j:I

    return-void
.end method
