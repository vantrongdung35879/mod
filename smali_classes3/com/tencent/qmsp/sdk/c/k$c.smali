.class Lcom/tencent/qmsp/sdk/c/k$c;
.super Lcom/tencent/qmsp/sdk/c/k$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qmsp/sdk/c/k;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/tencent/qmsp/sdk/c/k;


# direct methods
.method constructor <init>(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qmsp/sdk/c/k$i;-><init>(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k$i;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/j;->a()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const-string/jumbo v0, "visitQSecSFUItem libPath = %s libVer = %s libId = %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qp.QLM"

    invoke-static {v1, v3, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eq p6, v3, :cond_1

    if-eq p6, v4, :cond_1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Invalid mode: %d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v0}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/qmsp/sdk/c/j;->a(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object v4

    iget v5, v0, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-virtual {v4, v5, v2}, Lcom/tencent/qmsp/sdk/c/j;->a(IZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/qmsp/sdk/c/j$a;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/c/j$a;-><init>()V

    :goto_0
    iput p3, v0, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    iput p4, v0, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    iput p5, v0, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    iput-object p1, v0, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    iget-object p4, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p4}, Lcom/tencent/qmsp/sdk/c/k;->f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;

    move-result-object p4

    invoke-virtual {p4, v0, v2}, Lcom/tencent/qmsp/sdk/c/j;->a(Lcom/tencent/qmsp/sdk/c/j$a;Z)Z

    iput-boolean v3, p0, Lcom/tencent/qmsp/sdk/c/k$i;->a:Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array p5, v3, [Ljava/lang/Object;

    aput-object p4, p5, v2

    const-string/jumbo p4, "visitQSecSFUItem libId = %d"

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, v3, p4}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-ne p6, v3, :cond_4

    iget-object p4, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p4}, Lcom/tencent/qmsp/sdk/c/k;->g(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/g;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/tencent/qmsp/sdk/c/g;->a(I)I

    move-result p4

    if-ne p4, v3, :cond_4

    iget-object p4, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p4}, Lcom/tencent/qmsp/sdk/c/k;->b(Lcom/tencent/qmsp/sdk/c/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/qmsp/sdk/c/k$f;

    if-eqz p3, :cond_3

    iget-object p4, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p4, p3, p2, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$f;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p3, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/c/k;->b(Lcom/tencent/qmsp/sdk/c/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget p2, p3, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p1, v0}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/qmsp/sdk/c/k$c;->c:Lcom/tencent/qmsp/sdk/c/k;

    invoke-static {p2, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$f;)V

    :cond_4
    :goto_1
    return-void
.end method
