.class public final Lcom/tencent/qimei/at/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public volatile b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lcom/tencent/qimei/at/c;

.field public d:Lcom/tencent/qimei/ak/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/at/c;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qimei/at/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-object p1, p0, Lcom/tencent/qimei/at/e;->c:Lcom/tencent/qimei/at/c;

    .line 9
    iput-object p2, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/tencent/qimei/at/e;->d:Lcom/tencent/qimei/ak/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->d:Lcom/tencent/qimei/ak/n;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/qimei/ak/l;

    invoke-direct {v1, v0}, Lcom/tencent/qimei/ak/l;-><init>(Lcom/tencent/qimei/ak/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/n;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/tencent/qimei/at/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Lcom/tencent/qimei/sdk/QimeiSDK;->getInstance(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ai/a;

    invoke-direct {v1, p2, p1}, Lcom/tencent/qimei/ai/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/qimei/sdk/IQimeiSDK;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    .line 10
    iget-object p2, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/qimei/ac/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/qimei/ac/c;->b(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object p1

    const-string p2, "s_s_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string v3, "1"

    .line 7
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 9
    sget-object v4, Lcom/tencent/qimei/au/c;->G:Lcom/tencent/qimei/aa/d;

    .line 10
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 11
    sget-object v5, Lcom/tencent/qimei/at/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v0}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 19
    const-string v0, ""

    .line 20
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 21
    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "STRATEGY"

    const-string v5, "The parameter to get QM strategy is empty,cancel reqpuest"

    invoke-static {v4, v5, v2}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lcom/tencent/qimei/at/e;->a()V

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/tencent/qimei/at/e;->a:Ljava/lang/String;

    sget-object v4, Lcom/tencent/qimei/foundation/net/protocol/CMD;->QM_SETTING:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v4}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v5

    .line 24
    invoke-virtual {v4}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v4

    .line 25
    invoke-static {v2, v0, v5, v4}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v2, Lcom/tencent/qimei/y/d;

    invoke-direct {v2, v0}, Lcom/tencent/qimei/y/d;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lcom/tencent/qimei/y/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, v2, Lcom/tencent/qimei/y/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/tencent/qimei/y/d;->d:Ljava/lang/String;

    .line 30
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qimei/at/e;->a(Ljava/lang/String;Z)V

    .line 31
    iget-object v0, p0, Lcom/tencent/qimei/at/e;->c:Lcom/tencent/qimei/at/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    sget-object v2, Lcom/tencent/qimei/at/c;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    iput-boolean v1, v0, Lcom/tencent/qimei/at/c;->c:Z

    .line 34
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/qimei/at/e;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 36
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/Throwable;)V

    .line 38
    :goto_2
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "STRATEGY"

    const-string v2, "query strategy success"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qimei/at/e;->a()V

    .line 40
    invoke-virtual {v2}, Lcom/tencent/qimei/y/d;->a()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "STRATEGY"

    const-string v2, "query strategy failed,response err code is %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
