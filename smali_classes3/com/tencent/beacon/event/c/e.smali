.class Lcom/tencent/beacon/event/c/e;
.super Ljava/lang/Object;
.source "LogIDGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field final synthetic d:Lcom/tencent/beacon/event/c/g;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/c/g;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->a:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->b:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/beacon/event/c/e;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "[LogID "

    .line 1
    iget-object v1, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v2}, Lcom/tencent/beacon/event/c/g;->a(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->b(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 4
    iget-object v6, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v6}, Lcom/tencent/beacon/event/c/g;->f(Lcom/tencent/beacon/event/c/g;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 5
    iget-wide v8, p0, Lcom/tencent/beacon/event/c/e;->a:J

    cmp-long v10, v8, v2

    if-nez v10, :cond_0

    iget-wide v8, p0, Lcom/tencent/beacon/event/c/e;->b:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_0

    iget-wide v8, p0, Lcom/tencent/beacon/event/c/e;->c:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_0

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    iput-wide v2, p0, Lcom/tencent/beacon/event/c/e;->a:J

    .line 8
    iput-wide v4, p0, Lcom/tencent/beacon/event/c/e;->b:J

    .line 9
    iput-wide v6, p0, Lcom/tencent/beacon/event/c/e;->c:J

    .line 10
    iget-object v2, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v2}, Lcom/tencent/beacon/event/c/g;->g(Lcom/tencent/beacon/event/c/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/beacon/event/c/g;->a(Lcom/tencent/beacon/event/c/g;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const-string v3, "on_date"

    .line 13
    :try_start_1
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->d(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "realtime_log_id"

    :try_start_2
    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->a:J

    .line 14
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "normal_log_id"

    :try_start_3
    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->b:J

    .line 15
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "immediate_log_id"

    :try_start_4
    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->c:J

    .line 16
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v3, "realtime_min_log_id"

    :try_start_5
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 17
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->c(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v3, "realtime_max_log_id"

    :try_start_6
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 18
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->l(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v3, "normal_min_log_id"

    :try_start_7
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 19
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->k(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v3, "normal_max_log_id"

    :try_start_8
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 20
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->j(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v3, "immediate_min_log_id"

    :try_start_9
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 21
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->i(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v3, "immediate_max_log_id"

    :try_start_a
    iget-object v4, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 22
    invoke-static {v4}, Lcom/tencent/beacon/event/c/g;->h(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 23
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    invoke-static {v0}, Lcom/tencent/beacon/event/c/g;->e(Lcom/tencent/beacon/event/c/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v0, "]"

    :try_start_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, "  write serial to sp, date: %s ,realtime: %d, normal: %d, immediate: %d "

    :try_start_c
    iget-object v3, p0, Lcom/tencent/beacon/event/c/e;->d:Lcom/tencent/beacon/event/c/g;

    .line 25
    invoke-static {v3}, Lcom/tencent/beacon/event/c/g;->d(Lcom/tencent/beacon/event/c/g;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/beacon/event/c/e;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/tencent/beacon/event/c/e;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/tencent/beacon/event/c/e;->c:J

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v3, 0x3

    aput-object v6, v7, v3

    .line 27
    invoke-static {v0, v2, v7}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method
