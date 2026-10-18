.class public Lcom/perfsight/apm/c/g;
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

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object p1, p0, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfsight/apm/c/a$a;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    aget p1, p2, v0

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/perfsight/apm/c/a$a;->a()[I

    move-result-object p1

    if-nez p1, :cond_3

    aget p1, p2, v0

    return p1

    :cond_3
    :goto_2
    if-ge v0, p3, :cond_6

    aget v3, p1, v0

    if-lez v3, :cond_4

    return v1

    :cond_4
    if-lt v2, p3, :cond_5

    goto :goto_3

    :cond_5
    aget v1, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v1
.end method
