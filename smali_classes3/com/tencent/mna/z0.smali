.class public Lcom/tencent/mna/z0;
.super Ljava/lang/Object;
.source "HybridPlatform.java"

# interfaces
.implements Lcom/tencent/mna/j2;


# instance fields
.field private a:Lcom/tencent/mna/a1;

.field private b:Lcom/tencent/mna/c1;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/j2;Lcom/tencent/mna/j2;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/mna/x0;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/mna/j2;->b()Lcom/tencent/mna/a1;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Lcom/tencent/mna/j2;->b()Lcom/tencent/mna/a1;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-direct {v0, v2, v3}, Lcom/tencent/mna/x0;-><init>(Lcom/tencent/mna/a1;Lcom/tencent/mna/a1;)V

    iput-object v0, p0, Lcom/tencent/mna/z0;->a:Lcom/tencent/mna/a1;

    .line 4
    new-instance v0, Lcom/tencent/mna/y0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tencent/mna/j2;->a()Lcom/tencent/mna/c1;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Lcom/tencent/mna/j2;->a()Lcom/tencent/mna/c1;

    move-result-object v1

    :cond_3
    invoke-direct {v0, p1, v1}, Lcom/tencent/mna/y0;-><init>(Lcom/tencent/mna/c1;Lcom/tencent/mna/c1;)V

    iput-object v0, p0, Lcom/tencent/mna/z0;->b:Lcom/tencent/mna/c1;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/mna/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/z0;->b:Lcom/tencent/mna/c1;

    return-object v0
.end method

.method public b()Lcom/tencent/mna/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/z0;->a:Lcom/tencent/mna/a1;

    return-object v0
.end method
