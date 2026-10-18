.class public Lcom/tencent/mna/e2;
.super Ljava/lang/Object;
.source "NetworkBindingFactory.java"


# direct methods
.method public static a(I)Lcom/tencent/mna/f1;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p0, Lcom/tencent/mna/k0;

    invoke-direct {p0}, Lcom/tencent/mna/k0;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/tencent/mna/k0;

    invoke-direct {p0}, Lcom/tencent/mna/k0;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lcom/tencent/mna/o0;

    invoke-direct {p0}, Lcom/tencent/mna/o0;-><init>()V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Lcom/tencent/mna/a4;

    invoke-direct {p0}, Lcom/tencent/mna/a4;-><init>()V

    return-object p0
.end method
