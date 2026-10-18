.class public final Lcom/tencent/itop/httpdns/a/b/c/c;
.super Ljava/lang/Object;
.source "DnsResponseSelector.java"


# direct methods
.method public static a(Lcom/tencent/itop/httpdns/a/b/b/b;Lcom/tencent/itop/httpdns/a/b/a/b;)Lcom/tencent/itop/httpdns/a/b/c/d;
    .locals 6

    if-eqz p0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1

    .line 28
    :goto_1
    invoke-static {}, Lcom/tencent/itop/httpdns/base/b;->a()I

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    .line 56
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/c/d;

    invoke-direct {p0, v4, v2, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/itop/httpdns/a/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance p1, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 49
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 50
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v4}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v5, v0, v1}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p1

    .line 52
    :cond_3
    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v1, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    invoke-direct {v1, p1, v3}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 54
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v4}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v5, v1, p1}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object v0

    .line 41
    :cond_4
    new-instance p1, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 42
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v5, v2, v0}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p1

    .line 31
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/itop/httpdns/a/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance p1, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 34
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v4}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v3, v0, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p1

    .line 37
    :cond_6
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    invoke-direct {v0, p1, v3}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v3, v0, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p0
.end method

.method public static b(Lcom/tencent/itop/httpdns/a/b/b/b;Lcom/tencent/itop/httpdns/a/b/a/b;)Lcom/tencent/itop/httpdns/a/b/c/d;
    .locals 5

    if-eqz p0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/b/b;->a()Lcom/tencent/itop/httpdns/a/b/b/b;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {}, Lcom/tencent/itop/httpdns/a/b/a/b;->a()Lcom/tencent/itop/httpdns/a/b/a/b;

    move-result-object p1

    .line 73
    :goto_1
    invoke-static {}, Lcom/tencent/itop/httpdns/base/b;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    .line 85
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/c/d;

    invoke-direct {p0, v3, v2, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p0

    .line 79
    :cond_2
    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v2, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 80
    invoke-virtual {p1}, Lcom/tencent/itop/httpdns/a/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 81
    invoke-virtual {p0}, Lcom/tencent/itop/httpdns/a/b/b/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v2, p1}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object v0

    .line 83
    :cond_3
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/c/d;

    invoke-direct {p0, v3, v2, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p0

    .line 75
    :cond_4
    new-instance p0, Lcom/tencent/itop/httpdns/a/b/c/d;

    new-instance v0, Lcom/tencent/itop/httpdns/a/b/c/d$a;

    .line 76
    invoke-virtual {p1}, Lcom/tencent/itop/httpdns/a/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/tencent/itop/httpdns/a/b/c/d$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/itop/httpdns/a/b/c/d;-><init>(ILcom/tencent/itop/httpdns/a/b/c/d$a;Lcom/tencent/itop/httpdns/a/b/c/d$a;)V

    return-object p0
.end method
