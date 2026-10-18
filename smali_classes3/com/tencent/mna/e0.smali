.class public Lcom/tencent/mna/e0;
.super Ljava/lang/Object;
.source "DirectSpeedTesterFactory.java"


# direct methods
.method public static a(ILjava/lang/String;II)Lcom/tencent/mna/d1;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/mna/e0;->a(ILjava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/d1;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/d1;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/tencent/mna/d0;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mna/d0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/tencent/mna/r0;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mna/r0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lcom/tencent/mna/d0;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/mna/d0;-><init>(Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object p0
.end method
