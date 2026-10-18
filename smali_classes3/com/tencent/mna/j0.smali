.class public Lcom/tencent/mna/j0;
.super Ljava/lang/Object;
.source "DualTunnelSpeedComparator.java"

# interfaces
.implements Lcom/tencent/mna/h1;
.implements Ljava/io/Serializable;


# instance fields
.field private mDirectAvgMax:I

.field private mDirectStdMax:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/j0;->mDirectAvgMax:I

    .line 3
    iput p2, p0, Lcom/tencent/mna/j0;->mDirectStdMax:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I
    .locals 5

    .line 2
    invoke-virtual {p2}, Lcom/tencent/mna/a0;->c()D

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/tencent/mna/a0;->f()D

    move-result-wide p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DualTunnelSpeedComparator directAvg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/mna/j0;->mDirectAvgMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", directStd:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mna/j0;->mDirectStdMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 7
    iget v2, p0, Lcom/tencent/mna/j0;->mDirectAvgMax:I

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    iget v0, p0, Lcom/tencent/mna/j0;->mDirectStdMax:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "DualTunnelSpeedComparator return -1, Go Direct"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 12
    :cond_1
    :goto_0
    const-string p1, "DualTunnelSpeedComparator return 1, Go Forward"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/mna/a0;

    check-cast p2, Lcom/tencent/mna/a0;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/j0;->compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I

    move-result p1

    return p1
.end method
