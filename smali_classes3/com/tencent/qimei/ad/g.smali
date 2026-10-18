.class public final Lcom/tencent/qimei/ad/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile d:Lcom/tencent/qimei/ad/g;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/ad/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcom/tencent/qimei/ad/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/qimei/ad/g;->d:Lcom/tencent/qimei/ad/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/qimei/ad/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ad/g;->d:Lcom/tencent/qimei/ad/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qimei/ad/g;

    invoke-direct {v1}, Lcom/tencent/qimei/ad/g;-><init>()V

    sput-object v1, Lcom/tencent/qimei/ad/g;->d:Lcom/tencent/qimei/ad/g;

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
    sget-object v0, Lcom/tencent/qimei/ad/g;->d:Lcom/tencent/qimei/ad/g;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    .line 2
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/e;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/tencent/qimei/ac/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 8
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v7, v0, v6

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 11
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12
    :cond_3
    const-string v0, "c_f_uptimes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 16
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 17
    :cond_4
    const-string v0, "c_f_bootids"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 20
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 26
    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 36
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_a

    .line 37
    sget-object v1, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    invoke-virtual {v1, p0, v0}, Lcom/tencent/qimei/ac/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ad/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "f_uptimes"

    .line 11
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 15
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "f_uptimes"

    .line 16
    invoke-virtual {v0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, v0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v5, Lcom/tencent/qimei/ac/j;

    invoke-direct {v5, v0, v1}, Lcom/tencent/qimei/ac/j;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 20
    :cond_3
    :goto_1
    const-string v0, "c_f_uptimes"

    .line 21
    sget-object v1, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    .line 22
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/e;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    .line 25
    :cond_4
    iget-object v2, v1, Lcom/tencent/qimei/ac/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    const/16 v4, 0x400

    if-eqz v2, :cond_5

    goto :goto_4

    .line 26
    :cond_5
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 31
    :cond_6
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v5

    .line 32
    invoke-virtual {v5}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_3

    .line 35
    :cond_7
    iget-object v6, v5, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v7, v5, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v8, Lcom/tencent/qimei/ac/j;

    invoke-direct {v8, v5, v0}, Lcom/tencent/qimei/ac/j;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 36
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_8

    goto :goto_4

    .line 39
    :cond_8
    invoke-virtual {v1, v0, v2}, Lcom/tencent/qimei/ac/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_4
    const-string v0, "c_f_bootids"

    .line 41
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/e;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_5

    .line 44
    :cond_9
    iget-object v2, v1, Lcom/tencent/qimei/ac/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_a

    goto :goto_7

    .line 45
    :cond_a
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    .line 50
    :cond_b
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_6

    .line 54
    :cond_c
    iget-object v3, p1, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v6, Lcom/tencent/qimei/ac/j;

    invoke-direct {v6, p1, v0}, Lcom/tencent/qimei/ac/j;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 55
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v4, :cond_d

    goto :goto_7

    .line 58
    :cond_d
    invoke-virtual {v1, v0, v2}, Lcom/tencent/qimei/ac/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_7
    const-string p1, "c_f_uptimes"

    invoke-static {p1}, Lcom/tencent/qimei/ad/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/ad/g;->b:Ljava/lang/String;

    .line 60
    const-string p1, "c_f_bootids"

    invoke-static {p1}, Lcom/tencent/qimei/ad/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qimei/ad/g;->c:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/tencent/qimei/ad/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
