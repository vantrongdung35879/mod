.class public Lcom/tencent/mna/base/report/f;
.super Ljava/lang/Object;
.source "ReporterFactory.java"


# direct methods
.method private static a(I)Lcom/tencent/mna/base/report/c;
    .locals 2

    const-string v0, "beacon"

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/report/b;->b()Lcom/tencent/mna/base/report/b;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/report/h;->b()Lcom/tencent/mna/base/report/h;

    move-result-object p0

    .line 12
    const-string v0, "TDMaster"

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/report/b;->b()Lcom/tencent/mna/base/report/b;

    move-result-object p0

    .line 25
    :goto_0
    sget-boolean v1, Lcom/tencent/mna/t0;->r:Z

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/tencent/mna/base/report/c;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    const-string v1, "Channel:::MNA check reportChannel inValid:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 28
    const-string v1, "MNA\u672a\u68c0\u6d4b\u5230\u4e0a\u62a5SDK:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b2;->a(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/t0;->c()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;I)Lcom/tencent/mna/y2;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tencent/mna/base/report/d;I)Lcom/tencent/mna/y2;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/d;->getType()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/base/report/d;->NORMAL:Lcom/tencent/mna/base/report/d;

    invoke-virtual {v1}, Lcom/tencent/mna/base/report/d;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/mna/base/report/a;

    invoke-static {p1}, Lcom/tencent/mna/base/report/f;->a(I)Lcom/tencent/mna/base/report/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/base/report/a;-><init>(Lcom/tencent/mna/base/report/d;Lcom/tencent/mna/base/report/c;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/tencent/mna/base/report/g;

    invoke-static {p1}, Lcom/tencent/mna/base/report/f;->a(I)Lcom/tencent/mna/base/report/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/base/report/g;-><init>(Lcom/tencent/mna/base/report/d;Lcom/tencent/mna/base/report/c;)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/tencent/mna/d;->v1()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0, p0}, Lcom/tencent/mna/y2;->a(Z)V

    return-object v0
.end method
