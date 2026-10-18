.class public Lcom/tencent/tme/live/m/f$b;
.super Lcom/tencent/tme/live/m/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/m/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/m/f$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/tme/live/n/j;

.field public final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/tme/live/n/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/tencent/tme/live/n/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/m/f$a;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/tencent/tme/live/o/f;

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/m/f$b;->c:Lcom/tencent/tme/live/n/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    .line 2
    new-instance p3, Lcom/tencent/tme/live/m/g;

    const-wide/16 p4, 0x2

    invoke-direct {p3, p0, p4, p5}, Lcom/tencent/tme/live/m/g;-><init>(Lcom/tencent/tme/live/m/f$b;J)V

    check-cast p2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/j$b;)V

    .line 3
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->c:Lcom/tencent/tme/live/n/j;

    .line 4
    new-instance p3, Lcom/tencent/tme/live/m/g;

    invoke-direct {p3, p0, p4, p5}, Lcom/tencent/tme/live/m/g;-><init>(Lcom/tencent/tme/live/m/f$b;J)V

    check-cast p2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p2, p3}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/j$b;)V

    .line 5
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/tencent/tme/live/n/b;

    invoke-virtual {p5}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    sub-long/2addr p5, p3

    const/4 v0, 0x3

    int-to-long v0, v0

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 10
    :catch_0
    :cond_1
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    check-cast p2, Lcom/tencent/tme/live/o/f;

    .line 11
    iget-object p2, p2, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_2

    monitor-exit p0

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->c:Lcom/tencent/tme/live/n/j;

    check-cast p2, Lcom/tencent/tme/live/o/f;

    .line 13
    iget-object p2, p2, Lcom/tencent/tme/live/o/f;->a:Ljava/util/Collection;

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    :goto_0
    const/4 p3, 0x0

    goto :goto_1

    .line 14
    :cond_3
    :try_start_4
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    iget-object p5, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {p2, p5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    iget-object p4, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    check-cast p2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/b;)Z

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    check-cast p2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    iget-object p3, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/tencent/tme/live/m/f$b;->c:Lcom/tencent/tme/live/n/j;

    check-cast p2, Lcom/tencent/tme/live/o/f;

    invoke-virtual {p2, p1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_5

    .line 15
    iget p2, p1, Lcom/tencent/tme/live/n/b;->A:I

    or-int/lit16 p2, p2, 0x80

    iput p2, p1, Lcom/tencent/tme/live/n/b;->A:I

    :cond_5
    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/m/f$b;->c:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/f$b;->a:Lcom/tencent/tme/live/n/j;

    check-cast v0, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/m/f$b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
