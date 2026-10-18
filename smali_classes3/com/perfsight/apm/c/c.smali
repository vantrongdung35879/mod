.class public Lcom/perfsight/apm/c/c;
.super Lcom/perfsight/apm/c/a;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perfsight/apm/c/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/String;[II)I
    .locals 6

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_6

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/perfsight/apm/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget p1, p0, Lcom/perfsight/apm/c/a;->a:I

    div-int/lit8 v3, p1, 0x64

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfsight/apm/c/a$a;

    invoke-virtual {v3}, Lcom/perfsight/apm/c/a$a;->a()[I

    move-result-object v3

    if-nez v3, :cond_0

    aget p1, p2, v0

    return p1

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_3

    aget v4, v3, v0

    if-ge p1, v4, :cond_1

    return v1

    :cond_1
    if-lt v2, p3, :cond_2

    goto :goto_2

    :cond_2
    aget v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1

    :cond_4
    sub-int/2addr p3, v2

    aget p1, p2, p3

    return p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    aget p1, p2, v0

    return p1
.end method
