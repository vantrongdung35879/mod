.class public final Lcom/tencent/qimei/ac/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public final b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ac/m;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ac/m;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ac/m;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ac/m;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/ac/m;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ac/m;-><init>(Ljava/lang/String;)V

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
.method public final a()Landroid/content/SharedPreferences;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/ac/m;->e:Ljava/lang/String;

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QV1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qimei/ac/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/qimei/ad/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/tencent/qimei/ac/m;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    throw v0

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qimei/ac/l;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/qimei/ac/l;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;J)V

    invoke-static {v0, v1, v2}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qimei/ac/i;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/qimei/ac/i;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method
