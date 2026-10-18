.class public Lcom/tencent/mna/y0;
.super Ljava/lang/Object;
.source "HybridDiagnostor.java"

# interfaces
.implements Lcom/tencent/mna/c1;


# instance fields
.field private a:Lcom/tencent/mna/c1;

.field private b:Lcom/tencent/mna/c1;

.field private c:Lcom/tencent/mna/c1;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/c1;Lcom/tencent/mna/c1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/y0;->a:Lcom/tencent/mna/c1;

    .line 3
    iput-object p2, p0, Lcom/tencent/mna/y0;->b:Lcom/tencent/mna/c1;

    .line 4
    iput-object p1, p0, Lcom/tencent/mna/y0;->c:Lcom/tencent/mna/c1;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/y0;->c:Lcom/tencent/mna/c1;

    invoke-interface {v0, p1}, Lcom/tencent/mna/c1;->a(I)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/y0;->c:Lcom/tencent/mna/c1;

    invoke-interface {v0}, Lcom/tencent/mna/c1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/y0;->a:Lcom/tencent/mna/c1;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/mna/c1;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/mna/y0;->a:Lcom/tencent/mna/c1;

    iput-object v0, p0, Lcom/tencent/mna/y0;->c:Lcom/tencent/mna/c1;

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/y0;->b:Lcom/tencent/mna/c1;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/tencent/mna/c1;->c()I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/tencent/mna/y0;->b:Lcom/tencent/mna/c1;

    iput-object v1, p0, Lcom/tencent/mna/y0;->c:Lcom/tencent/mna/c1;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
