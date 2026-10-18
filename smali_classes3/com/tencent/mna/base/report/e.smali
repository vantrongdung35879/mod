.class abstract Lcom/tencent/mna/base/report/e;
.super Ljava/lang/Object;
.source "ReporterAbstract.java"

# interfaces
.implements Lcom/tencent/mna/y2;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/mna/base/report/e;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/report/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mna/base/report/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reporter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tencent/mna/y2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", set usereport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 10
    iput-boolean p1, p0, Lcom/tencent/mna/base/report/e;->a:Z

    return-void
.end method

.method abstract b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;
.end method

.method abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;
.end method

.method public final b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->e()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    const-string v1, "report event ["

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tencent/mna/y2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] failed for switch close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/tencent/mna/y2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->f()V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/base/report/e;->a:Z

    return v0
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method
