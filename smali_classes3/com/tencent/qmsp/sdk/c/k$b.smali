.class final Lcom/tencent/qmsp/sdk/c/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/qmsp/sdk/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/tencent/qmsp/sdk/c/k$f;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    const/16 v1, 0x1a

    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    return-void
.end method

.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    iget-object v0, v0, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    iget-object v1, v1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    const/16 v1, 0xc

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    new-instance v2, Lcom/tencent/qmsp/sdk/c/o;

    invoke-direct {v2}, Lcom/tencent/qmsp/sdk/c/o;-><init>()V

    iput-object v2, v1, Lcom/tencent/qmsp/sdk/c/k$f;->i:Lcom/tencent/qmsp/sdk/c/o;

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    iget v1, v1, Lcom/tencent/qmsp/sdk/c/k$f;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qmsp/sdk/d/e;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    const/16 v1, 0xa

    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    return-void

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    iget v2, v1, Lcom/tencent/qmsp/sdk/c/k$f;->b:I

    int-to-long v4, v2

    iget v2, v1, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    int-to-long v6, v2

    iget-object v10, v1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v2, 0x2

    const-wide/16 v8, 0x0

    move-object v13, v0

    invoke-static/range {v2 .. v13}, Lcom/tencent/qmsp/sdk/c/f;->a(JJJJLjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    goto :goto_2

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    const/16 v1, 0xf

    :goto_1
    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    :cond_5
    :goto_2
    return-void
.end method
