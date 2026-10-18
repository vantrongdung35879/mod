.class public Lcom/tencent/mna/k2;
.super Ljava/lang/Object;
.source "PlatformFactory.java"


# direct methods
.method public static a(I)Lcom/tencent/mna/a1;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/k2;->c(I)Lcom/tencent/mna/j2;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createAccelerator type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/mna/j2;->b()Lcom/tencent/mna/a1;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(I)Lcom/tencent/mna/c1;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/k2;->c(I)Lcom/tencent/mna/j2;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createDgnSpeedTester type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/tencent/mna/j2;->a()Lcom/tencent/mna/c1;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(I)Lcom/tencent/mna/j2;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createPlatform type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x64

    if-ge p0, v0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lcom/tencent/mna/h0;

    invoke-direct {v1}, Lcom/tencent/mna/h0;-><init>()V

    goto :goto_0

    .line 22
    :cond_2
    new-instance v1, Lcom/tencent/mna/z1;

    invoke-direct {v1}, Lcom/tencent/mna/z1;-><init>()V

    goto :goto_0

    .line 23
    :cond_3
    new-instance v1, Lcom/tencent/mna/q;

    invoke-direct {v1}, Lcom/tencent/mna/q;-><init>()V

    goto :goto_0

    .line 24
    :cond_4
    new-instance v1, Lcom/tencent/mna/n3;

    invoke-direct {v1}, Lcom/tencent/mna/n3;-><init>()V

    goto :goto_0

    .line 25
    :cond_5
    new-instance v1, Lcom/tencent/mna/l1;

    invoke-direct {v1}, Lcom/tencent/mna/l1;-><init>()V

    :goto_0
    return-object v1

    .line 44
    :cond_6
    new-instance v1, Lcom/tencent/mna/z0;

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Lcom/tencent/mna/k2;->c(I)Lcom/tencent/mna/j2;

    move-result-object v2

    rem-int/2addr p0, v0

    invoke-static {p0}, Lcom/tencent/mna/k2;->c(I)Lcom/tencent/mna/j2;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/tencent/mna/z0;-><init>(Lcom/tencent/mna/j2;Lcom/tencent/mna/j2;)V

    return-object v1
.end method
