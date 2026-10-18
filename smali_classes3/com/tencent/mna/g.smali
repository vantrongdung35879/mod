.class public Lcom/tencent/mna/g;
.super Ljava/lang/Object;
.source "AccelerateHook.java"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:I = -0x1

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    .line 82
    sput-object v0, Lcom/tencent/mna/g;->c:Ljava/lang/String;

    .line 83
    sput-object v0, Lcom/tencent/mna/g;->e:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/tencent/mna/g;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 86
    sput v0, Lcom/tencent/mna/g;->b:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/mna/base/jni/e;->a(Z)V

    return-void
.end method

.method public static a(ILjava/lang/String;Lcom/tencent/mna/k;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    const-string p0, "hookByType warning: udpPtr is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 9
    :cond_1
    sput p0, Lcom/tencent/mna/g;->b:I

    .line 10
    sput-object p1, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    :try_start_0
    iget-wide v4, p2, Lcom/tencent/mna/k;->e:J

    iget-wide v6, p2, Lcom/tencent/mna/k;->c:J

    iget-wide v8, p2, Lcom/tencent/mna/k;->d:J

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;JJJ)I

    move-result p0

    goto :goto_1

    .line 32
    :cond_3
    iget-wide v3, p2, Lcom/tencent/mna/k;->e:J

    iget-wide v5, p2, Lcom/tencent/mna/k;->a:J

    iget-wide v7, p2, Lcom/tencent/mna/k;->b:J

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;JJJ)I

    move-result p0

    goto :goto_1

    .line 33
    :cond_4
    iget-wide v3, p2, Lcom/tencent/mna/k;->e:J

    iget-wide v5, p2, Lcom/tencent/mna/k;->f:J

    iget-wide v7, p2, Lcom/tencent/mna/k;->g:J

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;JJJ)I

    move-result p0

    goto :goto_1

    .line 34
    :cond_5
    iget-wide v2, p2, Lcom/tencent/mna/k;->c:J

    iget-wide v4, p2, Lcom/tencent/mna/k;->d:J

    invoke-static {p1, v2, v3, v4, v5}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;JJ)I

    move-result p0

    goto :goto_1

    .line 35
    :cond_6
    iget-wide v2, p2, Lcom/tencent/mna/k;->a:J

    iget-wide v4, p2, Lcom/tencent/mna/k;->b:J

    invoke-static {p1, v2, v3, v4, v5}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;JJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hookByType exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-nez p0, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method static a(Ljava/lang/String;I)Z
    .locals 2

    .line 70
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    sput-object p0, Lcom/tencent/mna/g;->d:Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startFpsByHook exception:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 2

    .line 58
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    sput-object p0, Lcom/tencent/mna/g;->c:Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hookClose exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static b()Z
    .locals 5

    .line 13
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    sget-object v0, Lcom/tencent/mna/g;->d:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endFpsByUnhook exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static b(Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    sput-object p0, Lcom/tencent/mna/g;->e:Ljava/lang/String;

    .line 10
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;J)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hookSelect exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->l0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/mna/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static d()Z
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/w;->c:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget v0, Lcom/tencent/mna/base/utils/a$a;->a:I

    if-gt v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->d()Lcom/tencent/mna/base/utils/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mna/base/utils/e$a;->isLP64()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->m0()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/mna/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    sget v0, Lcom/tencent/mna/g;->b:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eq v0, v2, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    :try_start_0
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->h(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v3, v0

    goto :goto_1

    .line 33
    :cond_4
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 34
    :cond_5
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->j(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 35
    :cond_6
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->k(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 36
    :cond_7
    sget-object v0, Lcom/tencent/mna/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->l(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unhookByType exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :cond_9
    :goto_2
    return v2
.end method

.method public static g()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/mna/g;->c:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->f(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unhookClose exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public static h()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/mna/g;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/mna/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    sget-object v0, Lcom/tencent/mna/g;->e:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    :try_start_0
    sget-object v0, Lcom/tencent/mna/g;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->g(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unhookSelect exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method
