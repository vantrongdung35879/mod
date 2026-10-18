.class public Lcom/tencent/mna/x0;
.super Ljava/lang/Object;
.source "HybridAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# instance fields
.field private a:Lcom/tencent/mna/a1;

.field private b:Lcom/tencent/mna/a1;

.field private c:Lcom/tencent/mna/a1;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/a1;Lcom/tencent/mna/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/x0;->a:Lcom/tencent/mna/a1;

    .line 3
    iput-object p2, p0, Lcom/tencent/mna/x0;->b:Lcom/tencent/mna/a1;

    .line 4
    iput-object p1, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->a:Lcom/tencent/mna/a1;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/tencent/mna/x0;->a:Lcom/tencent/mna/a1;

    invoke-interface {v2}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v1, v2, Lcom/tencent/mna/f;->g:I

    .line 6
    iput v1, v2, Lcom/tencent/mna/f;->k:I

    :cond_0
    if-nez v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/tencent/mna/x0;->a:Lcom/tencent/mna/a1;

    iput-object p1, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/x0;->b:Lcom/tencent/mna/a1;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 16
    iget-object p2, p0, Lcom/tencent/mna/x0;->b:Lcom/tencent/mna/a1;

    iput-object p2, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    .line 17
    invoke-interface {p2}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 20
    iput v1, p2, Lcom/tencent/mna/f;->k:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :cond_3
    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->b()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->d()I

    move-result v0

    return v0
.end method

.method public e()Lcom/tencent/mna/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->e()Lcom/tencent/mna/k;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/tencent/mna/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->f()Lcom/tencent/mna/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/x0;->c:Lcom/tencent/mna/a1;

    invoke-interface {v0}, Lcom/tencent/mna/a1;->h()I

    move-result v0

    return v0
.end method
