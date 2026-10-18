.class public final Lcom/ihoc/mgpa/gradish/W0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/ihoc/mgpa/gradish/W0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/W0;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/ihoc/mgpa/gradish/W0;->b:Lcom/ihoc/mgpa/gradish/W0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)J
    .locals 0

    .line 12
    invoke-static {p1, p2}, Lcom/ihoc/mgpa/MGPANative;->getThreadAffinity(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public static a()Lcom/ihoc/mgpa/gradish/W0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/W0;->b:Lcom/ihoc/mgpa/gradish/W0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/W0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/W0;->b:Lcom/ihoc/mgpa/gradish/W0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/W0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/W0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/W0;->b:Lcom/ihoc/mgpa/gradish/W0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/W0;->b:Lcom/ihoc/mgpa/gradish/W0;

    return-object v0
.end method

.method private a(I[II)Z
    .locals 0

    .line 10
    invoke-static {p1, p2, p3}, Lcom/ihoc/mgpa/MGPANative;->setThreadAffinity(I[II)Z

    move-result p1

    return p1
.end method

.method private b(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->LIGHT_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/r;->b:[I

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget v1, v1, Lcom/ihoc/mgpa/gradish/r;->a:I

    invoke-direct {p0, p2, v0, v1}, Lcom/ihoc/mgpa/gradish/W0;->a(I[II)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/r;->c:[I

    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget v1, v1, Lcom/ihoc/mgpa/gradish/r;->a:I

    invoke-direct {p0, p2, v0, v1}, Lcom/ihoc/mgpa/gradish/W0;->a(I[II)Z

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESET_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget v0, v0, Lcom/ihoc/mgpa/gradish/r;->a:I

    invoke-direct {p0, p2, v0}, Lcom/ihoc/mgpa/gradish/W0;->d(II)Z

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ihoc/mgpa/gradish/s1;->a(II)V

    return-void
.end method

.method private d(II)Z
    .locals 2

    .line 1
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 3
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/ihoc/mgpa/gradish/W0;->a(I[II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->LIGHT_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    .line 14
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->RESET_THREAD_TID:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    .line 15
    invoke-virtual {v0}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 16
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ihoc/mgpa/gradish/W0;->b(II)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/ihoc/mgpa/gradish/W0;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->m:Lcom/ihoc/mgpa/gradish/r;

    iget v0, v0, Lcom/ihoc/mgpa/gradish/r;->a:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 4
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/ihoc/mgpa/gradish/W0;->a(II)J

    move-result-wide v0

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "affinity"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "tid"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v2}, Lcom/ihoc/mgpa/gradish/t1;->o(Ljava/util/HashMap;)V

    return-void
.end method
