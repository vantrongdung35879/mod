.class public Lcom/tencent/mna/g2;
.super Ljava/lang/Object;
.source "NetworkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/g2$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ZZZLcom/tencent/mna/j;)Lcom/tencent/mna/g2$b;
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/mna/g2$b;

    invoke-direct {v0}, Lcom/tencent/mna/g2$b;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v1

    .line 5
    invoke-static {v1}, Lcom/tencent/mna/g2$b;->a(I)I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/g2$b;->b:I

    .line 7
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/tencent/mna/g2$b;->r:I

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    .line 11
    const-string p3, ""

    .line 12
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 14
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {p3, v2}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result p4

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0xc8

    if-ne v3, v4, :cond_2

    .line 18
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 19
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-gtz p4, :cond_3

    .line 22
    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p4

    .line 23
    invoke-static {}, Lcom/tencent/mna/d;->c1()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {p4, v3, v2}, Lcom/tencent/mna/i2;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mna/i2$a;

    move-result-object p4

    .line 27
    iget p4, p4, Lcom/tencent/mna/i2$a;->b:I

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 32
    invoke-virtual {p4}, Lcom/tencent/mna/j;->c()Ljava/lang/String;

    move-result-object p3

    .line 33
    invoke-virtual {p4}, Lcom/tencent/mna/j;->b()I

    move-result p4

    :goto_0
    move v5, p4

    .line 37
    :cond_3
    iput v5, v0, Lcom/tencent/mna/g2$b;->p:I

    .line 38
    iput-object p3, v0, Lcom/tencent/mna/g2$b;->q:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_8

    .line 42
    invoke-static {}, Lcom/tencent/mna/c2;->c()Lcom/tencent/mna/c2$c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 44
    iget-wide p3, p1, Lcom/tencent/mna/c2$c;->c:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->l:I

    .line 45
    iget-wide p3, p1, Lcom/tencent/mna/c2$c;->d:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->m:I

    .line 46
    iget-wide p3, p1, Lcom/tencent/mna/c2$c;->e:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->n:I

    .line 47
    iget-wide p3, p1, Lcom/tencent/mna/c2$c;->f:J

    long-to-int p1, p3

    iput p1, v0, Lcom/tencent/mna/g2$b;->o:I

    .line 50
    :cond_5
    invoke-static {}, Lcom/tencent/mna/c2;->b()Lcom/tencent/mna/c2$a;

    move-result-object p1

    .line 52
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 54
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->h:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->f:I

    .line 55
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->d:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->g:I

    .line 57
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->j:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->h:I

    .line 58
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->f:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->i:I

    .line 59
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->i:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->j:I

    .line 60
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->e:J

    long-to-int p1, p3

    iput p1, v0, Lcom/tencent/mna/g2$b;->k:I

    goto :goto_1

    .line 61
    :cond_6
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->e(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 63
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->p:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->f:I

    .line 64
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->l:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->g:I

    .line 66
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->r:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->h:I

    .line 67
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->n:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->i:I

    .line 68
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->q:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->j:I

    .line 69
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->m:J

    long-to-int p1, p3

    iput p1, v0, Lcom/tencent/mna/g2$b;->k:I

    goto :goto_1

    .line 70
    :cond_7
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->d(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 72
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->x:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->f:I

    .line 73
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->t:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->g:I

    .line 75
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->z:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->h:I

    .line 76
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->v:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->i:I

    .line 77
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->y:J

    long-to-int p4, p3

    iput p4, v0, Lcom/tencent/mna/g2$b;->j:I

    .line 78
    iget-wide p3, p1, Lcom/tencent/mna/c2$a;->u:J

    long-to-int p1, p3

    iput p1, v0, Lcom/tencent/mna/g2$b;->k:I

    .line 83
    :cond_8
    :goto_1
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 85
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    .line 86
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Lcom/tencent/mna/g2$b;->c:I

    if-eqz p2, :cond_9

    .line 88
    invoke-static {p0, v2}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;I)I

    move-result p0

    iput p0, v0, Lcom/tencent/mna/g2$b;->d:I

    .line 90
    :cond_9
    invoke-static {}, Lcom/tencent/mna/base/utils/WifiUtil;->c()I

    move-result p0

    iput p0, v0, Lcom/tencent/mna/g2$b;->e:I

    goto :goto_2

    .line 91
    :cond_a
    invoke-static {v1}, Lcom/tencent/mna/base/utils/c;->e(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 93
    invoke-static {p0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/mna/g2$b;->a:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->d()I

    move-result p0

    iput p0, v0, Lcom/tencent/mna/g2$b;->c:I

    .line 97
    :cond_b
    :goto_2
    invoke-static {v0}, Lcom/tencent/mna/g2;->a(Lcom/tencent/mna/g2$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getNetworkQueryInfo exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method private static a(Lcom/tencent/mna/g2$b;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/tencent/mna/g2$a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/g2$a;-><init>(Lcom/tencent/mna/g2$b;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;)V

    return-void
.end method
