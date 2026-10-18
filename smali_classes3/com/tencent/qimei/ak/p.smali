.class public final Lcom/tencent/qimei/ak/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ak/p;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ak/p;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ak/p;->d:Ljava/lang/Object;

    .line 4
    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/qimei/ak/p;->e:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Lcom/tencent/qimei/ak/p;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ak/p;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ak/p;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ak/p;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/ak/p;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ak/p;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :goto_0
    const-string p1, "appKey"

    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p1, "crypt"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/tencent/qimei/ak/p;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    const-string/jumbo v2, "tn"

    .line 16
    invoke-virtual {v1}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v1, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v5, Lcom/tencent/qimei/ac/j;

    invoke-direct {v5, v1, v2}, Lcom/tencent/qimei/ac/j;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 20
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/ak/p;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->b:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/p;->c()Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iput-object v0, p0, Lcom/tencent/qimei/ak/p;->b:Ljava/lang/String;

    .line 16
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 17
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/p;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    const-string/jumbo v2, "tn"

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    const-string v0, "2"

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/p;->a()V

    .line 8
    const-string v1, ""

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/am/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qimei/am/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/p;->d()Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v1}, Lcom/tencent/qimei/ak/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qimei/foundation/net/protocol/CMD;->REGISTER:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v4

    .line 14
    invoke-virtual {v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v3

    .line 15
    invoke-static {v2, v4, v0, v3, v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v0, "4"

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/p;->d()Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v0, "3"

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v2

    const-string/jumbo v3, "t_s_t"

    invoke-virtual {v2, v3}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x18

    .line 21
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/qimei/ad/e;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {p0}, Lcom/tencent/qimei/ak/p;->d()Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v0, "5"

    .line 28
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v4

    .line 35
    const-string v5, "6"

    const-string v6, "1010"

    .line 36
    iget-object v7, v4, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v5, "7"

    .line 38
    iget-object v6, v4, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v0, "v2"

    invoke-virtual {v3, v4, v0, v2}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1

    :catchall_0
    move-exception v1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ak/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/tencent/qimei/ak/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/qimei/foundation/net/protocol/CMD;->REGISTER:Lcom/tencent/qimei/foundation/net/protocol/CMD;

    invoke-virtual {v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->b()I

    move-result v4

    .line 4
    invoke-virtual {v3}, Lcom/tencent/qimei/foundation/net/protocol/CMD;->a()I

    move-result v3

    .line 5
    invoke-static {v2, v4, v0, v3, v1}, Lcom/tencent/qimei/uin/U;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v1

    new-instance v2, Lcom/tencent/qimei/ak/o;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qimei/ak/o;-><init>(Lcom/tencent/qimei/ak/p;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/u/a;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method
