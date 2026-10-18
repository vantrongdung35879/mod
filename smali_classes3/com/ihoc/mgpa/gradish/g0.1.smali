.class public final Lcom/ihoc/mgpa/gradish/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/e0;->e()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->q:Lcom/ihoc/mgpa/gradish/e0;

    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/e0;->f()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f0;->c()Lcom/ihoc/mgpa/gradish/f0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/f0;->e()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-static {}, Lcom/ihoc/mgpa/gradish/f0;->c()Lcom/ihoc/mgpa/gradish/f0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/f0;->f()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/ihoc/mgpa/gradish/g0;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I[F)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SCENE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/g0;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
