.class public Lcom/tencent/tme/live/p2/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/tencent/tme/live/p2/o;

.field public final b:Z

.field public final c:Lcom/tencent/tme/live/p2/f;

.field public final d:Lcom/tencent/tme/live/p2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tme/live/p2/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/tme/live/p2/q;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/tme/live/p2/p;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/tme/live/p2/q;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/p2/a;

    invoke-direct {v0, p1}, Lcom/tencent/tme/live/p2/a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/tme/live/p2/q;->d:Lcom/tencent/tme/live/p2/a;

    invoke-virtual {v0, p2}, Lcom/tencent/tme/live/p2/a;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/q;->a()Lcom/tencent/tme/live/p2/f;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    const/16 p2, 0x24

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/p2/a;->b(Lcom/tencent/tme/live/p2/m;I)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tme/live/p2/f;->d()Lcom/tencent/tme/live/p2/o;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/tme/live/p2/q;->a:Lcom/tencent/tme/live/p2/o;

    invoke-virtual {p1}, Lcom/tencent/tme/live/p2/f;->b()Lcom/tencent/tme/live/p2/j;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/tencent/tme/live/p2/q;->b:Z

    const-wide/32 v0, 0x4ca918

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/p2/q;->a(J)V

    const-wide/32 v0, 0x35b42f29

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/p2/q;->b(J)V

    const-wide/32 v0, 0x1ee258    # 1.0000007E-317

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tme/live/p2/q;->c(J)V

    const-string p2, "fdAT"

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/p2/f;->c(Ljava/lang/String;)V

    const-string p2, "fcTL"

    invoke-virtual {p1, p2}, Lcom/tencent/tme/live/p2/f;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/tencent/tme/live/p2/x;

    const-string p2, "Could not read first 36 bytes (PNG signature+IHDR chunk)"

    invoke-direct {p1, p2}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/tme/live/p2/q;->d:Lcom/tencent/tme/live/p2/a;

    invoke-virtual {p2}, Lcom/tencent/tme/live/p2/a;->close()V

    iget-object p2, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    invoke-virtual {p2}, Lcom/tencent/tme/live/p2/f;->close()V

    throw p1
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/p2/f;
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/p2/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/p2/f;-><init>(Z)V

    return-object v0
.end method

.method public a(Z)Lcom/tencent/tme/live/q2/d;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 2
    iget p1, p1, Lcom/tencent/tme/live/p2/f;->q:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/q;->c()V

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    iget-object p1, p1, Lcom/tencent/tme/live/p2/f;->r:Lcom/tencent/tme/live/q2/d;

    return-object p1
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 4
    iput-wide p1, v0, Lcom/tencent/tme/live/p2/f;->y:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/p2/f;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 1
    iget v0, v0, Lcom/tencent/tme/live/p2/f;->q:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/q;->c()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/f;->c()Lcom/tencent/tme/live/p2/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/f;->c()Lcom/tencent/tme/live/p2/n;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/tencent/tme/live/p2/i;->e:I

    invoke-static {v0}, Lcom/tencent/tme/live/p2/h;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/f;->c()Lcom/tencent/tme/live/p2/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/i;->c()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 5
    iget-boolean v1, v0, Lcom/tencent/tme/live/p2/d;->e:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/tencent/tme/live/p2/q;->d:Lcom/tencent/tme/live/p2/a;

    const v2, 0x7fffffff

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/tencent/tme/live/p2/a;->a(Lcom/tencent/tme/live/p2/m;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/q;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/tme/live/p2/q;->close()V

    throw v0
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 9
    iput-wide p1, v0, Lcom/tencent/tme/live/p2/f;->w:J

    return-void
.end method

.method public c()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    iget v1, v0, Lcom/tencent/tme/live/p2/f;->q:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/tme/live/p2/q;->d:Lcom/tencent/tme/live/p2/a;

    const v2, 0x7fffffff

    .line 1
    invoke-virtual {v1, v0, v2}, Lcom/tencent/tme/live/p2/a;->a(Lcom/tencent/tme/live/p2/m;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/tme/live/p2/x;

    const-string v1, "Premature ending reading first chunks"

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/p2/x;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public c(J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    .line 3
    iput-wide p1, v0, Lcom/tencent/tme/live/p2/f;->x:J

    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->c:Lcom/tencent/tme/live/p2/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/f;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/tme/live/p2/q;->e:Ljava/util/logging/Logger;

    const-string v2, "error closing chunk sequence:"

    invoke-static {v2}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tme/live/p2/q;->d:Lcom/tencent/tme/live/p2/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tme/live/p2/a;->close()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tme/live/p2/q;->a:Lcom/tencent/tme/live/p2/o;

    invoke-virtual {v1}, Lcom/tencent/tme/live/p2/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interlaced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/tme/live/p2/q;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
