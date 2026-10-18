.class public Lcom/tencent/qmsp/sdk/c/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/c/k$h;,
        Lcom/tencent/qmsp/sdk/c/k$i;,
        Lcom/tencent/qmsp/sdk/c/k$g;,
        Lcom/tencent/qmsp/sdk/c/k$e;,
        Lcom/tencent/qmsp/sdk/c/k$f;
    }
.end annotation


# static fields
.field private static final i:[[B

.field private static j:Lcom/tencent/qmsp/sdk/c/k;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/qmsp/sdk/c/k$f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/qmsp/sdk/c/k$f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/qmsp/sdk/c/j;

.field private d:Lcom/tencent/qmsp/sdk/c/g;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/qmsp/sdk/c/k$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    new-array v4, v2, [B

    fill-array-data v4, :array_2

    new-array v5, v2, [B

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    new-array v7, v6, [B

    fill-array-data v7, :array_4

    const/16 v8, 0xe

    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const/4 v9, 0x6

    new-array v10, v9, [B

    fill-array-data v10, :array_6

    const/4 v11, 0x7

    new-array v11, v11, [[B

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v1, 0x1

    aput-object v3, v11, v1

    aput-object v4, v11, v0

    aput-object v5, v11, v6

    aput-object v7, v11, v2

    const/4 v0, 0x5

    aput-object v8, v11, v0

    aput-object v10, v11, v9

    sput-object v11, Lcom/tencent/qmsp/sdk/c/k;->i:[[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0x74t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x31t
        0x69t
        -0x5dt
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x23t
        0x7ct
        -0x4et
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x28t
        0x7ft
        -0x49t
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x33t
        0x75t
        -0x5ft
    .end array-data

    :array_5
    .array-data 1
        0x14t
        0x41t
        -0x7dt
        0x52t
        0x21t
        0x2ft
        0x72t
        -0x2t
        0x31t
        0x3et
        -0x7et
        0x7dt
        -0x60t
        0x50t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x14t
        0x7dt
        -0x60t
        0x50t
        0x1dt
        0xbt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    iput-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->g:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/tencent/qmsp/sdk/c/j;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/c/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/tencent/qmsp/sdk/c/k$g;

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/b;->e()Lcom/tencent/qmsp/sdk/app/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qmsp/sdk/app/b;->c()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/qmsp/sdk/c/k$g;-><init>(Lcom/tencent/qmsp/sdk/c/k;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;
    .locals 2

    new-instance v0, Lcom/tencent/qmsp/sdk/c/k$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/sdk/c/k$f;-><init>(Lcom/tencent/qmsp/sdk/c/k$a;)V

    iget v1, p1, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    iget v1, p1, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->b:I

    iget v1, p1, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    iput v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->c:I

    iget-object v1, p1, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/c/k;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(II)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/c/k$e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v3, "Notify listener [%d:%d]"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Qp.QLM"

    invoke-static {v4, v2, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p1, p2}, Lcom/tencent/qmsp/sdk/c/k$e;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/tencent/qmsp/sdk/c/k$f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->e(Lcom/tencent/qmsp/sdk/c/k$f;)V

    iget v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qmsp/sdk/f/d;->a(Ljava/lang/String;Z)V

    iput-object p3, p1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    :cond_0
    iget-object p3, p1, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iput-object p2, p1, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    :cond_1
    iput v1, p1, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k$f;)V

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k$f;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->g()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->c(Lcom/tencent/qmsp/sdk/c/k$e;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->c(Lcom/tencent/qmsp/sdk/c/k$f;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k$f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/qmsp/sdk/c/k;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qmsp/sdk/c/j$a;

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    iget v2, v0, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qmsp/sdk/c/j;->a(IZ)V

    iget-object v0, v0, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, Lcom/tencent/qmsp/sdk/f/d;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    invoke-virtual {p1}, Lcom/tencent/qmsp/sdk/c/j;->a()Z

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/c/k;->i:[[B

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/qmsp/sdk/c/k;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b(Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/tencent/qmsp/sdk/a/g;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/a/g;-><init>()V

    iget v1, p1, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qmsp/sdk/a/g;->a(Ljava/lang/String;)Lcom/tencent/qmsp/sdk/a/g;

    move-result-object v1

    iget p1, p1, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    invoke-virtual {v1, p1}, Lcom/tencent/qmsp/sdk/a/g;->a(I)Lcom/tencent/qmsp/sdk/a/g;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/a/g;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/tencent/qmsp/sdk/a/f;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const-string v3, "cb changed: id(%d), cb(%d)"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Qp.QLM"

    invoke-static {v5, v2, v3}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qmsp/sdk/c/k$f;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/qmsp/sdk/c/j;->a(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/k;->c(Lcom/tencent/qmsp/sdk/c/k$f;)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v2, :cond_6

    iget v1, v3, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    if-ne v1, v6, :cond_1

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k$f;)V

    iget v1, v3, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v3, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k$f;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget v2, v3, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/qmsp/sdk/c/j;->a(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/k;->a(Ljava/util/List;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private c(Lcom/tencent/qmsp/sdk/c/k$e;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qmsp/sdk/c/k$f;

    iget v2, v2, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v3

    const-string v2, "Notify listener [%d:%d]"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Qp.QLM"

    invoke-static {v4, v3, v2}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/tencent/qmsp/sdk/c/k$e;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->d(Lcom/tencent/qmsp/sdk/c/k$f;)V

    iget v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/qmsp/sdk/c/k;->a(II)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k$f;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->h()V

    return-void
.end method

.method private d()V
    .locals 4

    const-string v0, "addLostUpgradeLibs"

    const-string v1, "Qp.QLM"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qmsp/sdk/c/k$h;

    new-instance v1, Lcom/tencent/qmsp/sdk/c/k$i;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/tencent/qmsp/sdk/c/k$i;-><init>(Lcom/tencent/qmsp/sdk/c/k;Lcom/tencent/qmsp/sdk/c/k$a;)V

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/sdk/c/k$h;-><init>(Lcom/tencent/qmsp/sdk/c/k$i;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qmsp/sdk/c/k$h;->a(I)V

    return-void
.end method

.method private d(Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 9

    const/4 v0, 0x2

    iput v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    new-instance v1, Lcom/tencent/qmsp/sdk/c/k$b;

    invoke-direct {v1, p0}, Lcom/tencent/qmsp/sdk/c/k$b;-><init>(Lcom/tencent/qmsp/sdk/c/k;)V

    iput-object p1, v1, Lcom/tencent/qmsp/sdk/c/k$b;->a:Lcom/tencent/qmsp/sdk/c/k$f;

    new-instance v2, Lcom/tencent/qmsp/sdk/c/a;

    iget v3, p1, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "Lib%d_%s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v7, 0x2932e00

    invoke-direct {v2, v4, v7, v8}, Lcom/tencent/qmsp/sdk/c/a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v1}, Lcom/tencent/qmsp/sdk/c/a;->a(Lcom/tencent/qmsp/sdk/c/a$a;)V

    iget-object v1, p1, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :cond_0
    iget v2, p1, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    invoke-static {v2}, Lcom/tencent/qmsp/sdk/a/c;->a(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    aput-object v4, v5, v0

    const-string v0, "load: %s ver: %s error: %08X"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qp.QLM"

    invoke-static {v1, v3, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v0, p1, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    iput v3, p1, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    return-void
.end method

.method static synthetic d(Lcom/tencent/qmsp/sdk/c/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->i()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/qmsp/sdk/c/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static e()Lcom/tencent/qmsp/sdk/c/k;
    .locals 2

    sget-object v0, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/qmsp/sdk/c/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/qmsp/sdk/c/k;

    invoke-direct {v1}, Lcom/tencent/qmsp/sdk/c/k;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;

    return-object v0
.end method

.method private e(Lcom/tencent/qmsp/sdk/c/k$f;)V
    .locals 21

    move-object/from16 v0, p1

    iget v1, v0, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcom/tencent/qmsp/sdk/c/k$f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/tencent/qmsp/sdk/c/k$f;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/qmsp/sdk/c/k$f;->h:Ljava/lang/String;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    const/4 v3, 0x3

    aput-object v4, v7, v3

    const/4 v4, 0x4

    aput-object v5, v7, v4

    const/4 v5, 0x5

    aput-object v6, v7, v5

    const-string v6, "Prepare to unload: %d,%d,%d,%d,%s,%s"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Qp.QLM"

    invoke-static {v7, v1, v6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v6, v0, Lcom/tencent/qmsp/sdk/c/k$f;->c:I

    and-int/2addr v6, v1

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget v6, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    if-ne v6, v1, :cond_2

    iput v3, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    iget-object v3, v0, Lcom/tencent/qmsp/sdk/c/k$f;->i:Lcom/tencent/qmsp/sdk/c/o;

    invoke-virtual {v3}, Lcom/tencent/qmsp/sdk/c/o;->c()V

    iget v3, v0, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    int-to-long v11, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v9, 0x3

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v9 .. v20}, Lcom/tencent/qmsp/sdk/c/f;->a(JJJJLjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v8

    const-string v6, "Unload ret: %d"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v1, v6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v3, :cond_1

    iput v4, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    iget v0, v0, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    move-object/from16 v1, p0

    invoke-direct {v1, v2, v0}, Lcom/tencent/qmsp/sdk/c/k;->a(II)V

    goto :goto_0

    :cond_1
    move-object/from16 v1, p0

    iput v5, v0, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    iput v3, v0, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/j;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    return-object p0
.end method

.method private f()V
    .locals 12

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/j;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qmsp/sdk/c/j$a;

    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/k;->d:Lcom/tencent/qmsp/sdk/c/g;

    iget v4, v2, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-virtual {v3, v4}, Lcom/tencent/qmsp/sdk/c/g;->a(I)I

    move-result v3

    iget v4, v2, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v2, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v2, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    iget-object v8, v2, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    if-nez v8, :cond_2

    const-string v8, "null"

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v5, v10, v4

    const/4 v5, 0x2

    aput-object v6, v10, v5

    const/4 v6, 0x3

    aput-object v7, v10, v6

    const/4 v6, 0x4

    aput-object v8, v10, v6

    const/4 v6, 0x5

    aput-object v9, v10, v6

    const-string v6, "%d,%d,%d,%s,%s,%d"

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Qp.QLM"

    invoke-static {v7, v4, v6}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v3, :cond_1

    const/4 v6, -0x1

    if-ne v6, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne v5, v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-ne v4, v3, :cond_5

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/j$a;)Lcom/tencent/qmsp/sdk/c/k$f;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/k;->c(Lcom/tencent/qmsp/sdk/c/k$f;)V

    invoke-direct {p0, v2}, Lcom/tencent/qmsp/sdk/c/k;->a(Lcom/tencent/qmsp/sdk/c/k$f;)V

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/k;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/tencent/qmsp/sdk/c/k;)Lcom/tencent/qmsp/sdk/c/g;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/sdk/c/k;->d:Lcom/tencent/qmsp/sdk/c/g;

    return-object p0
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/qmsp/sdk/c/k;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->g:Z

    new-instance v0, Lcom/tencent/qmsp/sdk/c/k$h;

    new-instance v2, Lcom/tencent/qmsp/sdk/c/k$c;

    invoke-direct {v2, p0}, Lcom/tencent/qmsp/sdk/c/k$c;-><init>(Lcom/tencent/qmsp/sdk/c/k;)V

    invoke-direct {v0, v2}, Lcom/tencent/qmsp/sdk/c/k$h;-><init>(Lcom/tencent/qmsp/sdk/c/k$i;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qmsp/sdk/c/k$h;->a(I)V

    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "onLoadLocalLibs"

    const-string v1, "Qp.QLM"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->d()V

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->f()V

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/k;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/k;->j()V

    return-void
.end method

.method private i()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Qp.QLM"

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/tencent/qmsp/sdk/c/k;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v5, 0x1

    :try_start_0
    iget-object v8, v1, Lcom/tencent/qmsp/sdk/c/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/32 v9, 0x1b77400

    :goto_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tencent/qmsp/sdk/c/k$f;

    iget-object v12, v11, Lcom/tencent/qmsp/sdk/c/k$f;->g:Ljava/lang/String;

    iget v13, v11, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    if-eqz v13, :cond_0

    iget v12, v11, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    invoke-static {v12}, Lcom/tencent/qmsp/sdk/a/c;->a(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const-string v13, "Lib%d_%s_%s"

    :try_start_2
    iget v14, v11, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getUid()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v14, v7, v4

    aput-object v15, v7, v5

    const/4 v14, 0x2

    aput-object v12, v7, v14

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v13, "Lib%d_%s_%s_lpt"

    :try_start_3
    iget v15, v11, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getUid()Ljava/lang/String;

    move-result-object v16

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v15, v14, v4

    aput-object v16, v14, v5

    const/4 v15, 0x2

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-wide/16 v4, 0x0

    invoke-interface {v0, v13, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v4

    const-wide/32 v4, 0x1b77400

    cmp-long v19, v17, v4

    if-gez v19, :cond_2

    iget v4, v11, Lcom/tencent/qmsp/sdk/c/k$f;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v4, v14, :cond_2

    const-string v4, "Ignore rp for: %d,%08X,%s"

    :try_start_4
    iget v5, v11, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v7, v11, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v6, v11

    const/4 v5, 0x1

    aput-object v7, v6, v5

    const/4 v7, 0x2

    aput-object v12, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-wide/32 v4, 0x1b77400

    sub-long v6, v4, v17

    cmp-long v11, v9, v6

    if-lez v11, :cond_1

    move-wide v9, v6

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x1b77400

    const-string v14, "Rp: %d,%d,%s"

    :try_start_5
    iget v4, v11, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v11, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v6, v15

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v5, 0x2

    aput-object v12, v6, v5

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget v4, v11, Lcom/tencent/qmsp/sdk/c/k$f;->d:I

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v13, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {v1, v11}, Lcom/tencent/qmsp/sdk/c/k;->b(Lcom/tencent/qmsp/sdk/c/k$f;)V

    iget-object v4, v1, Lcom/tencent/qmsp/sdk/c/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-wide v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    const-wide/32 v6, 0x1b77400

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v9, v6

    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "next rp interval: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/qmsp/sdk/c/f;->i()Lcom/tencent/qmsp/sdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qmsp/sdk/c/f;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/qmsp/sdk/c/k$d;

    invoke-direct {v2, v1}, Lcom/tencent/qmsp/sdk/c/k$d;-><init>(Lcom/tencent/qmsp/sdk/c/k;)V

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(III[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qmsp/sdk/c/k$f;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v2, v0, Lcom/tencent/qmsp/sdk/c/k;->c:Lcom/tencent/qmsp/sdk/c/j;

    invoke-virtual {v2, v1}, Lcom/tencent/qmsp/sdk/c/j;->a(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    move/from16 v2, p3

    const/4 v5, 0x4

    goto :goto_1

    :cond_0
    const/16 v2, 0x11

    move/from16 v2, p3

    const/16 v5, 0x11

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget v5, v3, Lcom/tencent/qmsp/sdk/c/k$f;->f:I

    if-eq v2, v5, :cond_2

    const/16 v2, 0x20

    move/from16 v2, p3

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    iget v5, v3, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    if-eq v5, v1, :cond_3

    const/4 v2, 0x5

    move/from16 v2, p3

    const/4 v5, 0x5

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/tencent/qmsp/sdk/c/k;->d:Lcom/tencent/qmsp/sdk/c/g;

    invoke-virtual {v5, v1}, Lcom/tencent/qmsp/sdk/c/g;->a(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v2, 0x6

    move/from16 v2, p3

    const/4 v5, 0x6

    goto :goto_1

    :cond_4
    iget v5, v3, Lcom/tencent/qmsp/sdk/c/k$f;->e:I

    if-eq v5, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v5, v3, Lcom/tencent/qmsp/sdk/c/k$f;->i:Lcom/tencent/qmsp/sdk/c/o;

    invoke-virtual {v5}, Lcom/tencent/qmsp/sdk/c/o;->a()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_0
    const/4 v2, 0x7

    move/from16 v2, p3

    const/4 v5, 0x7

    goto :goto_1

    :cond_6
    iget v5, v3, Lcom/tencent/qmsp/sdk/c/k$f;->a:I

    int-to-long v8, v5

    int-to-long v10, v2

    move/from16 v2, p3

    int-to-long v12, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v6, 0x4

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-static/range {v6 .. v17}, Lcom/tencent/qmsp/sdk/c/f;->a(JJJJLjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v5

    iget-object v3, v3, Lcom/tencent/qmsp/sdk/c/k$f;->i:Lcom/tencent/qmsp/sdk/c/o;

    invoke-virtual {v3}, Lcom/tencent/qmsp/sdk/c/o;->b()V

    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v4

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const-string v1, "dispatch to id: %d, cmd: %d, err: %d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qp.QLM"

    invoke-static {v2, v4, v1}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v5
.end method

.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qmsp/sdk/c/k$f;

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/qmsp/sdk/c/k$f;->c:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/c/k$f;

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/k;->e(Lcom/tencent/qmsp/sdk/c/k$f;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qmsp/sdk/c/k;->j:Lcom/tencent/qmsp/sdk/c/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/qmsp/sdk/c/g;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/k;->d:Lcom/tencent/qmsp/sdk/c/g;

    new-instance v0, Lcom/tencent/qmsp/sdk/c/k$a;

    invoke-direct {v0, p0}, Lcom/tencent/qmsp/sdk/c/k$a;-><init>(Lcom/tencent/qmsp/sdk/c/k;)V

    invoke-virtual {p1, v0}, Lcom/tencent/qmsp/sdk/c/g;->a(Lcom/tencent/qmsp/sdk/c/g$c;)V

    return-void
.end method

.method public a(Lcom/tencent/qmsp/sdk/c/k$e;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/tencent/qmsp/sdk/c/k$e;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "OnEveryLogin mHasLoadLocal = %b"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qp.QLM"

    invoke-static {v2, v1, v0}, Lcom/tencent/qmsp/sdk/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/k;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/k;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
