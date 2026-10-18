.class public final Lcom/tencent/qimei/ag/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/ag/o;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/ag/o;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/qimei/ag/o;->c:Z

    .line 8
    iput-object p1, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/ag/o;
    .locals 3

    const-class v0, Lcom/tencent/qimei/ag/o;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/ag/o;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/ag/o;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/ag/o;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/ag/o;-><init>(Ljava/lang/String;)V

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
.method public final a()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 8
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->n:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 15
    iget-boolean v1, v0, Lcom/tencent/qimei/av/a;->d:Z

    if-eqz v1, :cond_1

    .line 16
    iget-boolean v1, v0, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/qimei/au/a;->i:Lcom/tencent/qimei/aa/b;

    iget-object v0, v0, Lcom/tencent/qimei/av/a;->q:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/qimei/au/d;->a(Lcom/tencent/qimei/aa/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ag/k;

    invoke-direct {v1}, Lcom/tencent/qimei/ag/k;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 4
    iget-object v0, v0, Lcom/tencent/qimei/av/a;->o:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 11
    iget-boolean v1, v0, Lcom/tencent/qimei/av/a;->h:Z

    if-eqz v1, :cond_1

    .line 12
    iget-boolean v0, v0, Lcom/tencent/qimei/av/a;->i:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ag/a;

    invoke-direct {v1}, Lcom/tencent/qimei/ag/a;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ag/o;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/at/a;->b:Lcom/tencent/qimei/av/a;

    .line 3
    iget-boolean v0, v0, Lcom/tencent/qimei/av/a;->i:Z

    if-nez v0, :cond_0

    .line 4
    const-string v0, ""

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/ag/p;->a()Lcom/tencent/qimei/ag/p;

    move-result-object v0

    new-instance v1, Lcom/tencent/qimei/ag/m;

    invoke-direct {v1}, Lcom/tencent/qimei/ag/m;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qimei/ag/p;->a(ILcom/tencent/qimei/ag/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
