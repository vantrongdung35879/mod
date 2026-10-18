.class public Lcom/tencent/tme/live/m/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/m/f$g;,
        Lcom/tencent/tme/live/m/f$f;,
        Lcom/tencent/tme/live/m/f$b;,
        Lcom/tencent/tme/live/m/f$d;,
        Lcom/tencent/tme/live/m/f$l;,
        Lcom/tencent/tme/live/m/f$m;,
        Lcom/tencent/tme/live/m/f$k;,
        Lcom/tencent/tme/live/m/f$i;,
        Lcom/tencent/tme/live/m/f$c;,
        Lcom/tencent/tme/live/m/f$h;,
        Lcom/tencent/tme/live/m/f$j;,
        Lcom/tencent/tme/live/m/f$a;,
        Lcom/tencent/tme/live/m/f$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Exception;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public d:[Lcom/tencent/tme/live/m/f$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;"
        }
    .end annotation
.end field

.field public e:[Lcom/tencent/tme/live/m/f$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not suuport this filter tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/f;->a:Ljava/lang/Exception;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/tencent/tme/live/m/f$e;

    iput-object v1, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    new-array v0, v0, [Lcom/tencent/tme/live/m/f$e;

    iput-object v0, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/tme/live/m/f$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/m/f;->a(Ljava/lang/String;Z)Lcom/tencent/tme/live/m/f$e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/tencent/tme/live/m/f$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/tencent/tme/live/m/f$e<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/m/f$e;

    if-nez v1, :cond_9

    const-string v2, "1010_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/tencent/tme/live/m/f$j;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$j;-><init>()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "1011_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/tencent/tme/live/m/f$h;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$h;-><init>()V

    goto/16 :goto_0

    :cond_1
    const-string v2, "1012_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/tencent/tme/live/m/f$c;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$c;-><init>()V

    goto :goto_0

    :cond_2
    const-string v2, "1013_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/tencent/tme/live/m/f$i;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$i;-><init>()V

    goto :goto_0

    :cond_3
    const-string v2, "1014_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/tencent/tme/live/m/f$m;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$m;-><init>()V

    goto :goto_0

    :cond_4
    const-string v2, "1015_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/tencent/tme/live/m/f$l;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$l;-><init>()V

    goto :goto_0

    :cond_5
    const-string v2, "1016_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lcom/tencent/tme/live/m/f$d;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$d;-><init>()V

    goto :goto_0

    :cond_6
    const-string v2, "1017_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lcom/tencent/tme/live/m/f$b;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$b;-><init>()V

    goto :goto_0

    :cond_7
    const-string v2, "1018_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lcom/tencent/tme/live/m/f$f;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$f;-><init>()V

    goto :goto_0

    :cond_8
    const-string v2, "1019_Filter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lcom/tencent/tme/live/m/f$g;

    invoke-direct {v1}, Lcom/tencent/tme/live/m/f$g;-><init>()V

    :cond_9
    :goto_0
    if-eqz v1, :cond_b

    invoke-interface {v1, v0}, Lcom/tencent/tme/live/m/f$e;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/tme/live/m/f$e;

    iput-object p1, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    goto :goto_1

    :cond_a
    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/tme/live/m/f$e;

    iput-object p1, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    :goto_1
    return-object v1

    .line 1
    :cond_b
    :try_start_0
    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->a:Ljava/lang/Exception;

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_c
    :try_start_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->a:Ljava/lang/Exception;

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v0
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/tencent/tme/live/m/f$e;->clear()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/tencent/tme/live/m/f$e;->clear()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/tencent/tme/live/m/f$e;->a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z

    move-result v4

    move-object/from16 v5, p6

    iget-object v6, v5, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    iget v6, v6, Lcom/tencent/tme/live/n/h;->c:I

    move-object v7, p1

    iput v6, v7, Lcom/tencent/tme/live/n/b;->B:I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_0
    move-object v7, p1

    move-object/from16 v5, p6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/tme/live/m/f;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/m/f$e;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tencent/tme/live/m/f$e;->clear()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/tme/live/m/f$e;

    iput-object p1, p0, Lcom/tencent/tme/live/m/f;->d:[Lcom/tencent/tme/live/m/f$e;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tme/live/m/f;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/tme/live/m/f$e;

    iput-object p1, p0, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    :cond_2
    :goto_1
    return-void
.end method
