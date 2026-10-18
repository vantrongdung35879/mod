.class public Lcom/tencent/tme/live/o2/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o2/a$a;
    }
.end annotation


# static fields
.field public static d:Lcom/tencent/tme/live/o2/a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o2/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o2/a;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/tme/live/o2/a;->c:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tme/live/o2/a;
    .locals 2

    const-class v0, Lcom/tencent/tme/live/o2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/tme/live/o2/a;->d:Lcom/tencent/tme/live/o2/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tme/live/o2/a;

    invoke-direct {v1}, Lcom/tencent/tme/live/o2/a;-><init>()V

    sput-object v1, Lcom/tencent/tme/live/o2/a;->d:Lcom/tencent/tme/live/o2/a;

    :cond_0
    sget-object v1, Lcom/tencent/tme/live/o2/a;->d:Lcom/tencent/tme/live/o2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/tme/live/o2/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/tme/live/o2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->b()V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tme/live/o2/a;->c:Landroid/os/Handler;

    new-instance v7, Lcom/tencent/tme/live/o2/a$a;

    .line 4
    iget-object v1, p0, Lcom/tencent/tme/live/o2/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tme/live/o2/a;->a:Ljava/util/Map;

    invoke-virtual {p0, p1, v2}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/tencent/tme/live/o2/a$a;-><init>(Lcom/tencent/tme/live/o2/a;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string v0, "Creating new subscriber map for:"

    if-eqz p1, :cond_b

    move-object v1, p3

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, p3, Lcom/tencent/tme/live/o2/b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    check-cast p3, Lcom/tencent/tme/live/o2/b;

    invoke-interface {p3}, Lcom/tencent/tme/live/o2/b;->a()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {p3}, Lcom/tencent/tme/live/o2/b;->c()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_a

    if-nez v1, :cond_3

    return v4

    :cond_3
    iget-object p3, p0, Lcom/tencent/tme/live/o2/a;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    const-string v2, "NotificationCenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10
    instance-of v0, p2, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    instance-of v0, p2, Lcom/tencent/tme/live/o2/b;

    if-eqz v0, :cond_8

    check-cast p2, Lcom/tencent/tme/live/o2/b;

    invoke-interface {p2}, Lcom/tencent/tme/live/o2/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-interface {p2}, Lcom/tencent/tme/live/o2/b;->b()V

    :cond_7
    move-object p2, v0

    .line 12
    :cond_8
    :goto_3
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    xor-int/lit8 p1, v4, 0x1

    monitor-exit p3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ProxySubscribers should always be subscribed strongly."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t subscribe to null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p3, Ljava/lang/ref/WeakReference;

    instance-of p1, p3, Lcom/tencent/tme/live/o2/b;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/tencent/tme/live/o2/b;

    invoke-interface {p3}, Lcom/tencent/tme/live/o2/b;->b()V

    :cond_1
    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/tencent/tme/live/o2/b;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/tencent/tme/live/o2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_4

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->b()V

    return v1

    :cond_4
    move-object v0, v2

    .line 8
    :cond_5
    nop

    instance-of v2, v0, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return v1

    :cond_6
    if-ne v0, p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return v1

    :cond_7
    instance-of v2, v0, Lcom/tencent/tme/live/o2/b;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/tencent/tme/live/o2/b;

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p3, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lcom/tencent/tme/live/o2/b;->b()V

    return v1

    :cond_8
    return p2
.end method
