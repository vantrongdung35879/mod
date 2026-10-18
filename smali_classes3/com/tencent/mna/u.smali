.class public Lcom/tencent/mna/u;
.super Ljava/lang/Object;
.source "CommonSpeedComparator.java"

# interfaces
.implements Lcom/tencent/mna/h1;
.implements Ljava/io/Serializable;


# instance fields
.field private mDiffThreshold:I

.field private mForwardAvgMax:I

.field private mForwardAvgMin:I

.field private mForwardStdMax:I

.field private mForwardTimeoutCountMax:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/mna/u;->mDiffThreshold:I

    .line 3
    iput p2, p0, Lcom/tencent/mna/u;->mForwardAvgMax:I

    .line 4
    iput p3, p0, Lcom/tencent/mna/u;->mForwardAvgMin:I

    .line 5
    iput p4, p0, Lcom/tencent/mna/u;->mForwardStdMax:I

    .line 6
    iput p5, p0, Lcom/tencent/mna/u;->mForwardTimeoutCountMax:I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommonSpeedComparator() called with: diffThreshold = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], forwardAvgMax = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], forwardAvgMin = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], forwardStdMax = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], forwardTimeoutNumMax = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I
    .locals 8

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mna/a0;->c()D

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/tencent/mna/a0;->c()D

    move-result-wide v2

    .line 4
    invoke-virtual {p1}, Lcom/tencent/mna/a0;->f()D

    move-result-wide v4

    .line 5
    invoke-virtual {p1}, Lcom/tencent/mna/a0;->g()I

    move-result p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "[N]CommonSpeedComparator compare forwardAvg = ["

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "], directAvg = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "], mDiffThreshold = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/u;->mDiffThreshold:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]; mForwardAvgMin = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/u;->mForwardAvgMin:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], forwardAvg = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "], mForwardAvgMax = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/u;->mForwardAvgMax:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]; forwardStdDeviation = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "], mForwardStdDeviationMax = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/u;->mForwardStdMax:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]; forwardTimeoutCount = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], mForwardTimeoutCountMax = ["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tencent/mna/u;->mForwardTimeoutCountMax:I

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    sub-double/2addr v2, v0

    .line 12
    iget p2, p0, Lcom/tencent/mna/u;->mDiffThreshold:I

    int-to-double v6, p2

    cmpl-double p2, v2, v6

    if-lez p2, :cond_1

    iget p2, p0, Lcom/tencent/mna/u;->mForwardAvgMin:I

    int-to-double v2, p2

    cmpg-double p2, v2, v0

    if-gez p2, :cond_1

    iget p2, p0, Lcom/tencent/mna/u;->mForwardAvgMax:I

    int-to-double v2, p2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_1

    iget p2, p0, Lcom/tencent/mna/u;->mForwardStdMax:I

    int-to-double v0, p2

    cmpg-double p2, v4, v0

    if-gez p2, :cond_1

    iget p2, p0, Lcom/tencent/mna/u;->mForwardTimeoutCountMax:I

    if-ge p1, p2, :cond_1

    .line 16
    const-string p1, "CommonSpeedComparator return 1, Go Forward"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_1
    const-string p1, "CommonSpeedComparator return -1, Go Direct"

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_2
    :goto_0
    const-string p1, "CommonSpeedComparator compare input is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/mna/a0;

    check-cast p2, Lcom/tencent/mna/a0;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/u;->compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I

    move-result p1

    return p1
.end method
