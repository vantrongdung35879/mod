.class public Lcom/tencent/mna/d3;
.super Ljava/lang/Object;
.source "RouterQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/d3$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;IIDLjava/lang/String;)Lcom/tencent/mna/d3$a;
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/mna/d3$a;

    invoke-direct {v0}, Lcom/tencent/mna/d3$a;-><init>()V

    .line 3
    :try_start_0
    iput-object p1, v0, Lcom/tencent/mna/d3$a;->a:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, p2, :cond_2

    .line 8
    invoke-static {v1, v5}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v5

    if-le v5, p3, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 12
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p2, -0x1

    if-ge v3, v5, :cond_1

    const/16 v5, 0x2c

    .line 14
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_3

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/mna/d3$a;->d:Ljava/lang/String;

    .line 20
    :cond_3
    invoke-static {p0}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result p0

    if-lez p2, :cond_4

    int-to-double v3, v4

    int-to-double p1, p2

    div-double/2addr v3, p1

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    .line 22
    :goto_1
    const-string p1, "#"

    invoke-virtual {p6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    array-length p2, p1

    const/4 p3, 0x3

    if-lt p2, p3, :cond_7

    if-lez p0, :cond_7

    .line 24
    iput p0, v0, Lcom/tencent/mna/d3$a;->e:I

    const/4 p2, 0x2

    if-lez p0, :cond_5

    if-gt p0, p2, :cond_5

    .line 26
    aget-object p0, p1, v2

    iput-object p0, v0, Lcom/tencent/mna/d3$a;->c:Ljava/lang/String;

    .line 27
    iput v5, v0, Lcom/tencent/mna/d3$a;->b:I

    goto :goto_2

    :cond_5
    if-ne p0, p3, :cond_6

    cmpl-double p3, v3, p4

    if-lez p3, :cond_6

    .line 29
    aget-object p0, p1, v5

    iput-object p0, v0, Lcom/tencent/mna/d3$a;->c:Ljava/lang/String;

    .line 30
    iput v5, v0, Lcom/tencent/mna/d3$a;->b:I

    goto :goto_2

    :cond_6
    const/4 p3, 0x4

    if-ne p0, p3, :cond_7

    cmpl-double p0, v3, p4

    if-lez p0, :cond_7

    .line 32
    aget-object p0, p1, p2

    iput-object p0, v0, Lcom/tencent/mna/d3$a;->c:Ljava/lang/String;

    .line 33
    iput v5, v0, Lcom/tencent/mna/d3$a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_2
    return-object v0
.end method
