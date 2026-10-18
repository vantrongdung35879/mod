.class public Lcom/tencent/tme/live/d/a$a;
.super Lcom/tencent/tme/live/p2/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public f:Ljava/io/File;

.field public g:Ljava/io/FileOutputStream;

.field public h:Ljava/io/File;

.field public i:Lcom/tencent/tme/live/p2/o;

.field public j:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/p2/q;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tme/live/d/a$a;->j:I

    iput-object p1, p0, Lcom/tencent/tme/live/d/a$a;->f:Ljava/io/File;

    return-void
.end method

.method public static a(Lcom/tencent/tme/live/d/a$a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/d/a$a;->d()V

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tme/live/d/a$a;->f:Ljava/io/File;

    iget v3, p0, Lcom/tencent/tme/live/d/a$a;->j:I

    invoke-static {v2, v3}, Lcom/tencent/tme/live/d/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/tencent/tme/live/d/a$a;->h:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a;->h:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/tencent/tme/live/p2/p;->a()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v0, Lcom/tencent/tme/live/q2/p;

    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a;->i:Lcom/tencent/tme/live/p2/o;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/q2/p;-><init>(Lcom/tencent/tme/live/p2/o;)V

    .line 4
    new-instance v1, Lcom/tencent/tme/live/q2/c;

    sget-object v2, Lcom/tencent/tme/live/q2/b;->a:[B

    .line 5
    invoke-static {v2}, Lcom/tencent/tme/live/q2/b;->a([B)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/tencent/tme/live/q2/c;-><init>(ILjava/lang/String;Z)V

    .line 6
    iget v2, v0, Lcom/tencent/tme/live/q2/p;->d:I

    iget-object v3, v1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/tencent/tme/live/p2/p;->a(I[BI)V

    iget v2, v0, Lcom/tencent/tme/live/q2/p;->e:I

    iget-object v3, v1, Lcom/tencent/tme/live/q2/c;->d:[B

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Lcom/tencent/tme/live/p2/p;->a(I[BI)V

    iget-object v2, v1, Lcom/tencent/tme/live/q2/c;->d:[B

    iget v3, v0, Lcom/tencent/tme/live/q2/p;->f:I

    int-to-byte v3, v3

    const/16 v5, 0x8

    aput-byte v3, v2, v5

    iget v3, v0, Lcom/tencent/tme/live/q2/p;->g:I

    int-to-byte v3, v3

    const/16 v5, 0x9

    aput-byte v3, v2, v5

    iget v3, v0, Lcom/tencent/tme/live/q2/p;->h:I

    int-to-byte v3, v3

    const/16 v5, 0xa

    aput-byte v3, v2, v5

    iget v3, v0, Lcom/tencent/tme/live/q2/p;->i:I

    int-to-byte v3, v3

    const/16 v5, 0xb

    aput-byte v3, v2, v5

    iget v0, v0, Lcom/tencent/tme/live/q2/p;->j:I

    int-to-byte v0, v0

    const/16 v3, 0xc

    aput-byte v0, v2, v3

    .line 7
    iget-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/q2/c;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v4}, Lcom/tencent/tme/live/p2/q;->a(Z)Lcom/tencent/tme/live/q2/d;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/q2/e;

    iget-object v2, v1, Lcom/tencent/tme/live/q2/e;->a:Ljava/lang/String;

    const-string v3, "IHDR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "fcTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "acTL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "IDAT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, v1, Lcom/tencent/tme/live/q2/e;->c:Lcom/tencent/tme/live/q2/c;

    .line 11
    iget-object v2, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v2}, Lcom/tencent/tme/live/q2/c;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/tme/live/p2/f;
    .locals 2

    new-instance v0, Lcom/tencent/tme/live/d/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tme/live/d/a$a$a;-><init>(Lcom/tencent/tme/live/d/a$a;Z)V

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 2
    sget-object v0, Lcom/tencent/tme/live/q2/b;->a:[B

    .line 3
    const-string v0, "IEND"

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    const/4 v2, 0x3

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 6
    new-instance v0, Lcom/tencent/tme/live/q2/c;

    sget-object v2, Lcom/tencent/tme/live/q2/b;->c:[B

    .line 7
    invoke-static {v2}, Lcom/tencent/tme/live/q2/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1}, Lcom/tencent/tme/live/q2/c;-><init>(ILjava/lang/String;Z)V

    .line 8
    iget-object v1, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Lcom/tencent/tme/live/q2/c;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tme/live/d/a$a;->g:Ljava/io/FileOutputStream;

    return-void
.end method
