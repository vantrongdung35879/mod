.class public final Lcom/tencent/qimei/ak/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/sdk/IQimeiSDK;
.implements Lcom/tencent/qimei/ar/b;
.implements Lcom/tencent/qimei/ar/c;
.implements Lcom/tencent/qimei/z/c;


# static fields
.field public static final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final k:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/tencent/qimei/al/a;

.field public final d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ak/n;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x13

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_1

    .line 5
    :cond_0
    const-class v0, Lcom/tencent/qimei/sdk/QimeiSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    sput-object v0, Lcom/tencent/qimei/ak/n;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/qimei/ak/n;->f:Z

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->g:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->h:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/tencent/qimei/al/a;

    invoke-direct {v0, p1}, Lcom/tencent/qimei/al/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/ak/n;->c:Lcom/tencent/qimei/al/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 6
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 8
    invoke-virtual {v1}, Lcom/tencent/qimei/v/c;->t()V

    .line 9
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->m()V

    .line 10
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/aw/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/aw/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/aw/b;->a()V

    .line 11
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qimei/report/beat/BeatType;->NET_CHANGE:Lcom/tencent/qimei/report/beat/BeatType;

    invoke-static {}, Lcom/tencent/qimei/ab/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/qimei/aj/c;->a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public final a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final addUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;

    .line 7
    invoke-interface {v3, v1}, Lcom/tencent/qimei/sdk/IAsyncQimeiListener;->onQimeiDispatch(Lcom/tencent/qimei/sdk/Qimei;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, ""

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei36()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->getQimei()Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    const-string v0, ""

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->getQimei16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getBeaconTicket()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->l()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    .line 10
    iget-wide v2, v0, Lcom/tencent/qimei/ak/b;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/qimei/ak/b;->d:J

    .line 14
    :cond_2
    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/tencent/qimei/ak/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 18
    :cond_3
    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    const-string/jumbo v3, "tt"

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/tencent/qimei/ak/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 25
    invoke-static {v2}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v2

    .line 26
    iget-object v2, v2, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 27
    sget-object v3, Lcom/tencent/qimei/au/a;->l:Lcom/tencent/qimei/aa/b;

    iget-object v2, v2, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_0

    .line 30
    :cond_6
    invoke-static {}, Lcom/tencent/qimei/uin/U;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, v2

    .line 32
    :goto_1
    iput-object v1, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/qimei/ak/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/tencent/qimei/ak/b;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final getDebugger()Lcom/tencent/qimei/sdk/debug/IDebugger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->c:Lcom/tencent/qimei/al/a;

    return-object v0
.end method

.method public final getQimei()Lcom/tencent/qimei/sdk/Qimei;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/tencent/qimei/ak/n;->a(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ak/h;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qimei/ak/h;-><init>(Lcom/tencent/qimei/ak/n;Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V
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

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.1.3.157"

    return-object v0
.end method

.method public final getStrategy()Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT"

    const-string v2, "getToken fail, sdk not init!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/p;->b(Ljava/lang/String;)Lcom/tencent/qimei/ak/p;

    move-result-object v0

    .line 6
    const-string v1, "1"

    iput-object v1, v0, Lcom/tencent/qimei/ak/p;->e:Ljava/lang/String;

    .line 7
    const-string v0, ""

    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/p;->b(Ljava/lang/String;)Lcom/tencent/qimei/ak/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/ak/p;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    invoke-virtual {v1}, Lcom/tencent/qimei/v/c;->t()V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0

    throw v1
.end method

.method public final i()Landroid/content/Context;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDK_INIT"

    const-string v2, "Context has been destroyed!!"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-boolean v2, p0, Lcom/tencent/qimei/ak/n;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    monitor-exit p0

    return v3

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "2.1.3.157"

    aput-object v2, v4, v3

    .line 8
    const-string v2, "SDK_INIT"

    const-string v6, "\n\n\n\n< Your AppKey is: %s SDK_VERSION is: %s>\n"

    invoke-static {v2, v6, v4}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 17
    iput-object p1, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->j()Z

    move-result p1

    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "SDK_INIT"

    const-string v1, "appkey:%s parameter exception"

    invoke-static {p1, v1, v0}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v5

    .line 29
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->k()V

    .line 31
    iget-object p1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "SDK_INIT"

    const-string v4, "\n\n\n\n\t\t\t\t ----- initialization finished! From appkey:%s ----- \n\n\n\n\t\t\t\t"

    invoke-static {p1, v4, v2}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iput-boolean v3, p0, Lcom/tencent/qimei/ak/n;->f:Z

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/tencent/qimei/ak/n;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 10

    .line 1
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v0, Lcom/tencent/qimei/aq/a;->a:Lcom/tencent/qimei/aq/b;

    .line 3
    const-string v1, "SdkInfo"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/tencent/qimei/aq/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BizInfo"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 9
    :cond_0
    sget-object v1, Lcom/tencent/qimei/ak/n;->k:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 14
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    const-string v2, "com.ola.star.sdk.OstarSDK"

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    .line 21
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    :goto_1
    if-nez v3, :cond_4

    goto :goto_3

    .line 23
    :cond_4
    const-class v3, Lcom/tencent/qimei/an/b;

    monitor-enter v3

    .line 24
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    monitor-exit v3

    goto :goto_3

    .line 28
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 30
    monitor-exit v3

    goto :goto_3

    .line 32
    :cond_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x100000

    .line 35
    new-array v0, v0, [B

    .line 37
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_7

    .line 38
    invoke-virtual {v1, v0, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 40
    :cond_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 41
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catch_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :goto_3
    sget-object v4, Lcom/tencent/qimei/an/a;->a:Lcom/tencent/qimei/an/b;

    iget-object v5, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    sget-object v0, Lcom/tencent/qimei/ak/n;->k:Ljava/lang/String;

    .line 44
    invoke-static {v5}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 45
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 46
    iget-object v8, v1, Lcom/tencent/qimei/av/a;->l:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 49
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 50
    iget-boolean v9, v1, Lcom/tencent/qimei/av/a;->i:Z

    .line 51
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-object v7, v0

    .line 53
    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qimei/an/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 59
    iput-object v0, v1, Lcom/tencent/qimei/ac/m;->e:Ljava/lang/String;

    .line 60
    iput-object v2, v1, Lcom/tencent/qimei/ac/m;->c:Landroid/content/Context;

    .line 61
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ac/c;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qimei/ac/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/tencent/qimei/ac/d;->a:Lcom/tencent/qimei/ac/e;

    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 64
    iput-object v1, v0, Lcom/tencent/qimei/ac/e;->b:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qimei/at/a;->a(Lcom/tencent/qimei/ak/n;)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->n()V

    .line 68
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ak/i;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ak/i;-><init>(Lcom/tencent/qimei/ak/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ag/o;->a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ak/j;

    invoke-direct {v1, p0}, Lcom/tencent/qimei/ak/j;-><init>(Lcom/tencent/qimei/ak/n;)V

    .line 70
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/qimei/ag/f;

    invoke-direct {v3, v0, v1}, Lcom/tencent/qimei/ag/f;-><init>(Lcom/tencent/qimei/ag/o;Lcom/tencent/qimei/ak/j;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 71
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qimei/ak/n;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v3, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "SDK_INIT"

    const-string v3, "appkey:%s uninitialized"

    invoke-static {v2, v3, v1}, Lcom/tencent/qimei/af/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    sget v1, Lcom/tencent/qimei/ap/f;->a:I

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 4
    sget-object v2, Lcom/tencent/qimei/au/a;->j:Lcom/tencent/qimei/aa/b;

    iget-object v1, v1, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c QM"

    const-string v4, "force update Qm"

    invoke-static {v1, v4, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->a(Ljava/lang/String;)Lcom/tencent/qimei/sdk/Qimei;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/Qimei;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SDK_INIT \uff5c QM"

    const-string v4, "QM is null,need update Qm"

    invoke-static {v1, v4, v0}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :goto_2
    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    const-class v4, Lcom/tencent/qimei/ak/g;

    monitor-enter v4

    .line 12
    :try_start_0
    sget-object v5, Lcom/tencent/qimei/ak/g;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qimei/ak/g;

    if-nez v6, :cond_3

    .line 14
    new-instance v6, Lcom/tencent/qimei/ak/g;

    invoke-direct {v6, v1}, Lcom/tencent/qimei/ak/g;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p0, v6, Lcom/tencent/qimei/ak/g;->a:Lcom/tencent/qimei/ak/n;

    .line 16
    invoke-virtual {v5, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_3
    monitor-exit v4

    if-eqz v0, :cond_4

    .line 18
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v1, "q_s_t"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 23
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x6

    if-ne v1, v5, :cond_6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_7

    .line 30
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "SDK_INIT \uff5c QM"

    const-string v5, "cross day since last QM request"

    invoke-static {v4, v5, v1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    if-eqz v0, :cond_11

    .line 31
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 35
    new-instance v10, Lcom/tencent/qimei/ap/e;

    invoke-direct {v10}, Lcom/tencent/qimei/ap/e;-><init>()V

    .line 36
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v11

    .line 37
    iget-object v11, v11, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 38
    sget-object v12, Lcom/tencent/qimei/au/c;->I:Lcom/tencent/qimei/aa/d;

    .line 39
    iget-object v11, v11, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    .line 40
    sget-object v13, Lcom/tencent/qimei/at/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 41
    invoke-virtual {v12, v11}, Lcom/tencent/qimei/aa/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_8

    const/4 v12, 0x2

    .line 45
    :try_start_1
    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/tencent/qimei/ap/e;->a:I

    const/4 v12, 0x3

    const/4 v13, 0x5

    .line 46
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/tencent/qimei/ap/e;->b:I

    const/16 v12, 0x8

    .line 47
    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v10, Lcom/tencent/qimei/ap/e;->c:I

    const/16 v7, 0x9

    .line 48
    invoke-virtual {v11, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/tencent/qimei/ap/e;->d:I

    .line 49
    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/tencent/qimei/ap/e;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 51
    :catch_0
    new-instance v10, Lcom/tencent/qimei/ap/e;

    invoke-direct {v10}, Lcom/tencent/qimei/ap/e;-><init>()V

    .line 56
    :cond_8
    :goto_5
    iget v5, v10, Lcom/tencent/qimei/ap/e;->a:I

    if-ne v4, v5, :cond_9

    iget v5, v10, Lcom/tencent/qimei/ap/e;->b:I

    if-ge v8, v5, :cond_a

    :cond_9
    iget v5, v10, Lcom/tencent/qimei/ap/e;->c:I

    if-ne v4, v5, :cond_c

    iget v4, v10, Lcom/tencent/qimei/ap/e;->d:I

    if-gt v8, v4, :cond_c

    .line 57
    :cond_a
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v4

    .line 58
    iget-object v4, v4, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 59
    iget-boolean v5, v4, Lcom/tencent/qimei/av/a;->g:Z

    if-eqz v5, :cond_b

    .line 60
    iget-boolean v5, v4, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/tencent/qimei/au/a;->r:Lcom/tencent/qimei/aa/b;

    iget-object v4, v4, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 61
    invoke-static {v1}, Lcom/tencent/qimei/v/a;->a(Landroid/content/Context;)Z

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    xor-int/2addr v1, v2

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_f

    .line 62
    iget v4, v10, Lcom/tencent/qimei/ap/e;->a:I

    iget v5, v10, Lcom/tencent/qimei/ap/e;->c:I

    if-le v4, v5, :cond_d

    mul-int/lit8 v4, v4, 0x3c

    .line 63
    iget v7, v10, Lcom/tencent/qimei/ap/e;->b:I

    add-int/2addr v4, v7

    rsub-int v4, v4, 0x5a0

    mul-int/lit8 v5, v5, 0x3c

    iget v7, v10, Lcom/tencent/qimei/ap/e;->d:I

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    goto :goto_8

    :cond_d
    if-ge v4, v5, :cond_e

    mul-int/lit8 v5, v5, 0x3c

    .line 65
    iget v7, v10, Lcom/tencent/qimei/ap/e;->d:I

    add-int/2addr v5, v7

    mul-int/lit8 v4, v4, 0x3c

    iget v7, v10, Lcom/tencent/qimei/ap/e;->b:I

    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    goto :goto_8

    .line 67
    :cond_e
    iget v4, v10, Lcom/tencent/qimei/ap/e;->d:I

    iget v5, v10, Lcom/tencent/qimei/ap/e;->b:I

    sub-int v5, v4, v5

    :goto_8
    const v4, 0xea60

    mul-int v5, v5, v4

    .line 73
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 74
    new-instance v8, Ljava/util/Random;

    int-to-long v11, v7

    invoke-direct {v8, v11, v12}, Ljava/util/Random;-><init>(J)V

    .line 75
    iget v7, v10, Lcom/tencent/qimei/ap/e;->e:I

    mul-int v7, v7, v4

    invoke-virtual {v8, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 79
    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    .line 80
    iput v4, v0, Lcom/tencent/qimei/ak/b;->e:I

    :cond_f
    if-eqz v1, :cond_10

    .line 81
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    .line 83
    iget v3, v0, Lcom/tencent/qimei/ak/b;->e:I

    .line 84
    :cond_10
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2, v6}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    goto :goto_9

    .line 86
    :cond_11
    iget-object v0, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "SDK_INIT \uff5c QM"

    const-string v2, "no need to update QM(appKey: %s)"

    invoke-static {v0, v2, v1}, Lcom/tencent/qimei/af/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/n;->c()V

    .line 91
    :goto_9
    new-instance v0, Lcom/tencent/qimei/ak/m;

    iget-object v1, p0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    invoke-direct {v0, v6, v1}, Lcom/tencent/qimei/ak/m;-><init>(Lcom/tencent/qimei/ak/g;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/tencent/qimei/ap/f;->a(Lcom/tencent/qimei/ak/m;)V

    return-void

    :catchall_0
    move-exception v0

    .line 93
    monitor-exit v4

    throw v0
.end method

.method public final n()V
    .locals 6

    .line 1
    const-class v0, Lcom/tencent/qimei/v/c;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/v/c;->p:Lcom/tencent/qimei/v/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x17

    .line 4
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "Androws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x16

    const/16 v3, 0x18

    if-eqz v1, :cond_0

    .line 6
    const-string v1, "Androws"

    invoke-virtual {p0, v1}, Lcom/tencent/qimei/ak/n;->setSdkName(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    .line 7
    const-string v1, "guid"

    .line 8
    invoke-static {v3}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string/jumbo v1, "winQm"

    .line 11
    invoke-static {v2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "Syzs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    const-string v0, "Syzs"

    invoke-virtual {p0, v0}, Lcom/tencent/qimei/ak/n;->setSdkName(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;

    .line 16
    const-string v0, "guid"

    .line 17
    invoke-static {v3}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v0, "winQm"

    .line 20
    invoke-static {v2}, Lcom/tencent/qimei/r/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/tencent/qimei/ak/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method

.method public final setAppVersion(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sput-object p1, Lcom/tencent/qimei/v/a;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final setChannelID(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/n;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized setLogAble(Z)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/af/a;->a(Z)V

    .line 2
    invoke-static {p1}, Lcom/tencent/qimei/af/a;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized setLogObserver(Lcom/tencent/qimei/log/IObservableLog;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/qimei/af/a;->a(Lcom/tencent/qimei/log/IObservableLog;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setOstarCached(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final setSdkName(Ljava/lang/String;)Lcom/tencent/qimei/sdk/IQimeiSDK;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/qimei/ak/n;->f:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ak/n;->h:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
