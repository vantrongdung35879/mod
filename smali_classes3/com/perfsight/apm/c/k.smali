.class public Lcom/perfsight/apm/c/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/perfsight/apm/c/n;

.field private b:Lcom/perfsight/apm/c/n;

.field private c:Lcom/perfsight/apm/c/n;

.field private d:Lcom/perfsight/apm/c/n;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/perfsight/apm/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:[I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[I

.field private n:[I

.field private o:[I

.field private p:[I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->a:Lcom/perfsight/apm/c/n;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->d:Lcom/perfsight/apm/c/n;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->g:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perfsight/apm/c/k;->h:Z

    iput v1, p0, Lcom/perfsight/apm/c/k;->i:I

    iput v1, p0, Lcom/perfsight/apm/c/k;->j:I

    iput v1, p0, Lcom/perfsight/apm/c/k;->k:I

    iput v1, p0, Lcom/perfsight/apm/c/k;->l:I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->m:[I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->n:[I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->o:[I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->p:[I

    iput-boolean v1, p0, Lcom/perfsight/apm/c/k;->q:Z

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s|-|\\.|\\+|\\t|:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    array-length v1, p1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    aget-object v1, p1, v0

    const-string/jumbo v2, "vivante"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_2
    aget-object v1, p1, v0

    const-string v2, "adreno"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "in check adreno"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "contains null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_3
    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a;

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/perfsight/apm/c/a;->a([Ljava/lang/String;[II)I

    move-result p1

    return p1

    :cond_4
    aget-object v1, p1, v0

    const-string v2, "powervr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    aget-object v1, p1, v0

    const-string v3, "imagination"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    aget-object v1, p1, v0

    const-string v3, "sgx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    :cond_5
    aget-object v1, p1, v0

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "mali"

    if-nez v1, :cond_a

    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    array-length v1, p1

    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    aget-object v1, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    aget-object v1, p1, v0

    const-string/jumbo v2, "tegra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    aget-object v1, p1, v0

    const-string v3, "nvidia"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_8
    :goto_0
    const-string v1, "in check tegra"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo p1, "tegra null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_9
    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a;

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/perfsight/apm/c/a;->a([Ljava/lang/String;[II)I

    move-result p1

    return p1

    :cond_a
    :goto_1
    const-string v1, "in check mali"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string p1, "mali null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_b
    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    const-string v1, "mali-mc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a;

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v3, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v0, p1, v1, v3}, Lcom/perfsight/apm/c/a;->a([Ljava/lang/String;[II)I

    move-result v0

    const/16 v1, -0x2738

    if-eq v0, v1, :cond_c

    return v0

    :cond_c
    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a;

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/perfsight/apm/c/a;->a([Ljava/lang/String;[II)I

    move-result p1

    return p1

    :cond_d
    :goto_2
    const-string v1, "in check powervr"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string p1, "powervr null, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1

    :cond_e
    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a;

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/perfsight/apm/c/a;->a([Ljava/lang/String;[II)I

    move-result p1

    return p1

    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget p1, p1, v0

    return p1
.end method

.method private a([II[II)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    aget p1, p3, v0

    return p1

    :cond_0
    aget v1, p3, v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    array-length v2, p1

    const/4 v3, 0x1

    :goto_1
    if-ge v0, v2, :cond_4

    aget v4, p1, v0

    if-ge p2, v4, :cond_2

    goto :goto_2

    :cond_2
    if-lt v3, p4, :cond_3

    goto :goto_2

    :cond_3
    aget v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method private a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v6, p0, Lcom/perfsight/apm/c/k;->q:Z

    if-eqz v6, :cond_7

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "Pattern is null"

    :goto_2
    invoke-static {v5}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, "Matcher is null"

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "regex matches"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    move-object v1, v3

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fv: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :cond_a
    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    return-object v0

    :cond_c
    :goto_4
    const-string p1, "filter is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iput p1, p0, Lcom/perfsight/apm/c/k;->l:I

    new-instance v0, Lcom/perfsight/apm/c/n;

    invoke-direct {v0}, Lcom/perfsight/apm/c/n;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->a:Lcom/perfsight/apm/c/n;

    new-instance v0, Lcom/perfsight/apm/c/n;

    invoke-direct {v0}, Lcom/perfsight/apm/c/n;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    new-instance v0, Lcom/perfsight/apm/c/n;

    invoke-direct {v0}, Lcom/perfsight/apm/c/n;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;

    new-instance v0, Lcom/perfsight/apm/c/n;

    invoke-direct {v0}, Lcom/perfsight/apm/c/n;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->d:Lcom/perfsight/apm/c/n;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->m:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->n:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->o:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->p:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->g:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    new-instance v1, Lcom/perfsight/apm/c/c;

    const-string v2, "adreno"

    invoke-direct {v1, v2, p1}, Lcom/perfsight/apm/c/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    new-instance v1, Lcom/perfsight/apm/c/d;

    const-string v2, "mali"

    invoke-direct {v1, v2, p1}, Lcom/perfsight/apm/c/d;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    new-instance v1, Lcom/perfsight/apm/c/e;

    const-string v2, "mali-mc"

    invoke-direct {v1, v2, p1}, Lcom/perfsight/apm/c/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    new-instance v1, Lcom/perfsight/apm/c/f;

    const-string v2, "powervr"

    invoke-direct {v1, v2, p1}, Lcom/perfsight/apm/c/f;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    new-instance v1, Lcom/perfsight/apm/c/g;

    const-string/jumbo v2, "tegra"

    invoke-direct {v1, v2, p1}, Lcom/perfsight/apm/c/g;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/util/JsonReader;Lcom/perfsight/apm/c/n;)V
    .locals 5

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filter-key-name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/perfsight/apm/c/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/perfsight/apm/c/k;->q:Z

    const/4 v4, 0x1

    invoke-static {p1, v1, v4, v3}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;Ljava/util/List;ZZ)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "bad category :"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private a(Landroid/util/JsonReader;Ljava/lang/String;Lcom/perfsight/apm/c/a;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "series"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_0

    const-string v0, "read series"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/perfsight/apm/c/k;->q:Z

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;Ljava/util/List;ZZ)V

    invoke-virtual {p3, p2, p4}, Lcom/perfsight/apm/c/a;->a(Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2

    iget-object v1, p3, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/perfsight/apm/c/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfsight/apm/c/a$a;

    invoke-virtual {v0}, Lcom/perfsight/apm/c/a$a;->a()[I

    move-result-object v0

    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad series"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpu skip values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method public static a(Landroid/util/JsonReader;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    const-string v2, "\\S"

    const-string v3, "\\B"

    const-string v4, "\\D"

    const-string v5, "\\W"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_2

    :cond_3
    aget-char v5, v2, v4

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    aput-char v5, v2, v4

    goto :goto_2

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "strarray: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private a(Landroid/util/JsonReader;[II)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v1, p3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    aput v3, p2, v1

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p3, "intarray: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p3, p2

    :goto_1
    if-ge v0, p3, :cond_2

    aget v1, p2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "NA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vender : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " renderer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/perfsight/apm/jni/TApmNativeHelper;->checkEmulator(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private b(Landroid/util/JsonReader;)V
    .locals 3

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpu vendor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfsight/apm/c/a;

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;Ljava/lang/String;Lcom/perfsight/apm/c/a;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "gpuvendror not exists"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private b(I)Z
    .locals 2

    iget v0, p0, Lcom/perfsight/apm/c/k;->j:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shr-int p1, v0, p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(I)Z
    .locals 2

    iget v0, p0, Lcom/perfsight/apm/c/k;->i:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shr-int p1, v0, p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)I
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "parse: "

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "classLevelNum"

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->a(I)V

    iput-boolean v3, p0, Lcom/perfsight/apm/c/k;->h:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/perfsight/apm/c/k;->h:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_2

    const-string p1, "ctx not initialized, return"

    :try_start_3
    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 p1, -0x271a

    return p1

    :cond_2
    const-string v2, "classLevelValues"

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v4, :cond_4

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v1, p0, Lcom/perfsight/apm/c/k;->l:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/perfsight/apm/c/k;->g:[I

    invoke-direct {p0, p1, v2, v1}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    iget-object v5, p0, Lcom/perfsight/apm/c/k;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/perfsight/apm/c/k;->a:Lcom/perfsight/apm/c/n;

    invoke-virtual {v5}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    invoke-virtual {v5}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;

    invoke-virtual {v5}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/perfsight/apm/c/k;->d:Lcom/perfsight/apm/c/n;

    invoke-virtual {v5}, Lcom/perfsight/apm/c/n;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "switchops"

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/c/k;->i:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_5
    const-string v2, "andopts"

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/c/k;->j:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_6
    const-string v2, "emulator"

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/perfsight/apm/c/k;->k:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_7
    const-string v2, "regex"

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/perfsight/apm/c/k;->q:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_9
    const-string v2, "filter-model"

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->a:Lcom/perfsight/apm/c/n;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3

    :cond_a
    const-string v2, "filter-gpu"

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    :cond_b
    const-string v2, "filter-soc"

    :try_start_b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_3

    :cond_c
    const-string v2, "filter-manu"

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->d:Lcom/perfsight/apm/c/n;

    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;Lcom/perfsight/apm/c/n;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    :cond_d
    const-string v2, "resolution"

    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v4, :cond_e

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->n:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    :cond_e
    const-string v2, "ram"

    :try_start_e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v4, :cond_f

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->m:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :cond_f
    const-string v2, "cpufreq"

    :try_start_f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v4, :cond_10

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->o:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    :cond_10
    const-string v2, "cpucores"

    :try_start_10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v4, :cond_11

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->p:[I

    iget v2, p0, Lcom/perfsight/apm/c/k;->l:I

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/perfsight/apm/c/k;->a(Landroid/util/JsonReader;[II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    :cond_11
    const-string v2, "gpu_vendor"

    :try_start_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p0, p1}, Lcom/perfsight/apm/c/k;->b(Landroid/util/JsonReader;)V

    goto/16 :goto_0

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v3, "skip value : "

    :try_start_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    :cond_13
    const-string v1, "parse qcc finished"

    :try_start_13
    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occured: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3f5

    if-nez p1, :cond_15

    const-string p1, "NA"

    :cond_14
    :goto_4
    invoke-static {v1, p1}, Lcom/perfsight/apm/c/b;->a(ILjava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_14

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :goto_5
    const/16 p1, -0x271b

    return p1
.end method

.method public a(Lcom/perfsight/apm/c/s$a;)I
    .locals 9

    iget-boolean v0, p0, Lcom/perfsight/apm/c/k;->h:Z

    if-nez v0, :cond_0

    const-string p1, "ctx not initialized, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 p1, -0x272e

    return p1

    :cond_0
    iget v0, p0, Lcom/perfsight/apm/c/k;->i:I

    if-nez v0, :cond_1

    const-string/jumbo p1, "switch opts is 0, return"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    const/16 p1, -0x2730

    return p1

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/perfsight/apm/c/s$a;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perfsight/apm/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "emulator, return default"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/perfsight/apm/c/k;->k:I

    return p1

    :cond_2
    iget-object v1, p0, Lcom/perfsight/apm/c/k;->g:[I

    if-nez v1, :cond_3

    const-string p1, "default class value is null"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    const/16 p1, -0x2731

    return p1

    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "try to match filter model"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->a:Lcom/perfsight/apm/c/n;

    iget-object v2, p1, Lcom/perfsight/apm/c/s$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "filter model match"

    :try_start_0
    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    nop

    :cond_4
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v1

    const-string v2, "angle"

    if-eqz v1, :cond_8

    const-string/jumbo v1, "try to match filter gpu"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "^angle \\((.*)\\)$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filter angle gpu match: angle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "angle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/perfsight/apm/c/k;->b:Lcom/perfsight/apm/c/n;

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    const-string v3, "filter gpu match"

    :try_start_1
    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    nop

    :cond_8
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "try to match filter soc"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "filter soc platform match"

    :try_start_2
    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    nop

    :cond_9
    iget-object v1, p0, Lcom/perfsight/apm/c/k;->c:Lcom/perfsight/apm/c/n;

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->g:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v3, "filter soc hardware match"

    :try_start_3
    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return p1

    :catch_3
    nop

    :cond_a
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "try to match filter manu"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->d:Lcom/perfsight/apm/c/n;

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/perfsight/apm/c/k;->a(Lcom/perfsight/apm/c/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v3, "filter manu match"

    :try_start_4
    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return p1

    :catch_4
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "begin and values calculation, levelnums: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/perfsight/apm/c/k;->g:[I

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_c

    aget v7, v3, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "def values : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v3

    const/16 v4, 0x63

    if-eqz v3, :cond_e

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "in OPT_RESOLUTION"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->n:[I

    iget v3, p1, Lcom/perfsight/apm/c/s$a;->k:I

    iget-object v6, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v7, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, v1, v3, v6, v7}, Lcom/perfsight/apm/c/k;->a([II[II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PRE OPT_RESOLUTION: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-ge v4, v1, :cond_d

    goto :goto_2

    :cond_d
    move v4, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OPT_RESOLUTION: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_e
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "in OPT_RAM "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/perfsight/apm/c/s$a;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->m:[I

    iget v3, p1, Lcom/perfsight/apm/c/s$a;->h:I

    iget-object v6, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v7, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, v1, v3, v6, v7}, Lcom/perfsight/apm/c/k;->a([II[II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PRE OPT_RAM: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-ge v4, v1, :cond_f

    goto :goto_3

    :cond_f
    move v4, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OPT_RAM: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_10
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "in OPT_CPUFREQ"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->o:[I

    iget v3, p1, Lcom/perfsight/apm/c/s$a;->j:I

    iget-object v6, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v7, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, v1, v3, v6, v7}, Lcom/perfsight/apm/c/k;->a([II[II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PRE OPT_CPUFREQ: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-ge v4, v1, :cond_11

    goto :goto_4

    :cond_11
    move v4, v1

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OPT_CPUFREQ: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_12
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "in OPT_CPUCORES"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfsight/apm/c/k;->p:[I

    iget v3, p1, Lcom/perfsight/apm/c/s$a;->i:I

    iget-object v6, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v7, p0, Lcom/perfsight/apm/c/k;->l:I

    invoke-direct {p0, v1, v3, v6, v7}, Lcom/perfsight/apm/c/k;->a([II[II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PRE OPT_CPUCORES: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-ge v4, v1, :cond_13

    goto :goto_5

    :cond_13
    move v4, v1

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OPT_CPUCORES: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_14
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->c(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->b(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "in OPT_GPU"

    invoke-static {v1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/perfsight/apm/c/k;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/perfsight/apm/c/k;->g:[I

    aget v3, v3, v5

    if-ne v1, v3, :cond_15

    iget-object v3, p1, Lcom/perfsight/apm/c/s$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object p1, p1, Lcom/perfsight/apm/c/s$a;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perfsight/apm/c/k;->a(Ljava/lang/String;)I

    move-result v1

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "PRE OPT_GPU: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    if-ge v4, v1, :cond_16

    goto :goto_6

    :cond_16
    move v4, v1

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "OPT_GPU: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V

    :cond_17
    iget-object p1, p0, Lcom/perfsight/apm/c/k;->g:[I

    iget v1, p0, Lcom/perfsight/apm/c/k;->l:I

    sub-int/2addr v1, v0

    aget v0, p1, v1

    if-le v4, v0, :cond_18

    aget v4, p1, v5

    :cond_18
    return v4
.end method
