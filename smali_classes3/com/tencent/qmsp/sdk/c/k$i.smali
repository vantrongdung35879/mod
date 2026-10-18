.class Lcom/tencent/qmsp/sdk/c/k$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/sdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcom/tencent/qmsp/sdk/c/k;


# direct methods
.method private constructor <init>(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$i;->b:Lcom/tencent/qmsp/sdk/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/qmsp/sdk/c/k$i;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k$i;-><init>(Lcom/tencent/qmsp/sdk/c/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k$i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$i;->b:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/j;->a()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p6, v1, v4

    const-string/jumbo p6, "visitQSecSFUItem libPath = %s libVer = %s libId = %d"

    invoke-static {p6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    const-string v1, "Qp.QLM"

    invoke-static {v1, v3, p6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    iget-object p6, p0, Lcom/tencent/qmsp/sdk/c/k$i;->b:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p6}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object p6

    invoke-virtual {p6, p3}, Lcom/tencent/qmsp/sdk/c/j;->a(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object p6

    if-eqz p6, :cond_1

    iget-object v5, p6, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p6, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p6, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    if-ne p4, v5, :cond_1

    iget v5, p6, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    if-eq p5, v5, :cond_3

    :cond_1
    if-nez p6, :cond_2

    new-instance p6, Lcom/tencent/qmsp/sdk/c/j$a;

    invoke-direct {p6}, Lcom/tencent/qmsp/sdk/c/j$a;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/tencent/qmsp/sdk/c/k$i;->b:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v5}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object v5

    invoke-virtual {v5, p3, v2}, Lcom/tencent/qmsp/sdk/c/j;->a(IZ)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "Database info mismatch for lib: %d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    iput p3, p6, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    iput p4, p6, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    iput p5, p6, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    iput-object p1, p6, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    iput-object p2, p6, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    iget p1, p6, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p6, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p6, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p6, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p1, p5, v2

    aput-object p2, p5, v3

    aput-object p3, p5, v4

    aput-object p4, p5, v0

    const-string p1, "Add lost lib: %d,%d,%d,%s"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$i;->b:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object p1

    invoke-virtual {p1, p6, v2}, Lcom/tencent/qmsp/sdk/c/j;->a(Lcom/tencent/qmsp/sdk/c/j$a;Z)Z

    iput-boolean v3, p0, Lcom/tencent/qmsp/sdk/c/k$i;->a:Z

    :cond_3
    return-void
.end method
