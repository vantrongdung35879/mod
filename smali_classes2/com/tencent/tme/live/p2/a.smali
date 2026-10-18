.class public Lcom/tencent/tme/live/p2/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:[B

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/p2/a;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/a;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/a;->f:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/tme/live/p2/a;->g:J

    iput-object p1, p0, Lcom/tencent/tme/live/p2/a;->a:Ljava/io/InputStream;

    if-ge p2, v0, :cond_0

    const/16 p2, 0x4000

    :cond_0
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/tencent/tme/live/p2/a;->b:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/p2/m;I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/p2/a;->c:I

    const/4 v1, 0x0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/tme/live/p2/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iput v1, p0, Lcom/tencent/tme/live/p2/a;->d:I

    iget-object v0, p0, Lcom/tencent/tme/live/p2/a;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tencent/tme/live/p2/a;->b:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/p2/a;->c:I

    if-eqz v0, :cond_2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/a;->close()V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/tencent/tme/live/p2/a;->g:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/tme/live/p2/a;->g:J

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "This should not happen: stream.read(buf) returned 0"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/tencent/tme/live/p2/x;

    invoke-direct {p2, p1}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_0
    if-lez p2, :cond_4

    .line 2
    iget v0, p0, Lcom/tencent/tme/live/p2/a;->c:I

    if-ge p2, v0, :cond_4

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/tencent/tme/live/p2/a;->c:I

    :goto_1
    const/4 v0, -0x1

    if-lez p2, :cond_9

    iget-object v1, p0, Lcom/tencent/tme/live/p2/a;->b:[B

    iget v2, p0, Lcom/tencent/tme/live/p2/a;->d:I

    invoke-interface {p1, v1, v2, p2}, Lcom/tencent/tme/live/p2/m;->a([BII)I

    move-result p2

    if-lez p2, :cond_6

    iget v1, p0, Lcom/tencent/tme/live/p2/a;->d:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/tencent/tme/live/p2/a;->d:I

    iget v1, p0, Lcom/tencent/tme/live/p2/a;->c:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/tencent/tme/live/p2/a;->c:I

    sget-boolean v2, Lcom/tencent/tme/live/p2/a;->h:Z

    if-nez v2, :cond_6

    if-ltz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-lez p2, :cond_7

    return p2

    :cond_7
    invoke-interface {p1}, Lcom/tencent/tme/live/p2/m;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "This should not happen!"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-boolean p2, p0, Lcom/tencent/tme/live/p2/a;->e:Z

    if-eqz p2, :cond_b

    invoke-interface {p1}, Lcom/tencent/tme/live/p2/m;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, -0x1

    :cond_a
    return v1

    :cond_b
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "This should not happen"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tme/live/p2/a;->f:Z

    return-void
.end method

.method public b(Lcom/tencent/tme/live/p2/m;I)I
    .locals 2

    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/p2/a;->a(Lcom/tencent/tme/live/p2/m;I)I

    move-result v1

    if-gtz v1, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/tencent/tme/live/p2/a;->h:Z

    if-nez p1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return p2
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/p2/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/p2/a;->b:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/p2/a;->c:I

    iput v1, p0, Lcom/tencent/tme/live/p2/a;->d:I

    iget-object v1, p0, Lcom/tencent/tme/live/p2/a;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/tencent/tme/live/p2/a;->f:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/tencent/tme/live/p2/a;->a:Ljava/io/InputStream;

    return-void
.end method
