.class public final Lcom/tencent/qimei/am/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Lcom/tencent/qimei/sdk/Qimei;

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qimei/am/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qimei/am/a;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/qimei/am/a;->c:Z

    .line 4
    iput v0, p0, Lcom/tencent/qimei/am/a;->d:I

    .line 10
    iput-object p1, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/tencent/qimei/am/a;
    .locals 3

    const-class v0, Lcom/tencent/qimei/am/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/tencent/qimei/am/a;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qimei/am/a;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/tencent/qimei/am/a;

    invoke-direct {v2, p0}, Lcom/tencent/qimei/am/a;-><init>(Ljava/lang/String;)V

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
.method public final declared-synchronized a()Z
    .locals 10

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qimei/am/a;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/tencent/qimei/am/a;->b:Z

    goto :goto_2

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/qimei/v/a;->d()J

    move-result-wide v5

    .line 10
    iget-object v0, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v7, "a_i_t"

    invoke-virtual {v0, v7}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v7, "a_i_t"

    invoke-virtual {v0, v7, v5, v6}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    iput-boolean v1, p0, Lcom/tencent/qimei/am/a;->f:Z

    .line 18
    :goto_2
    iput-boolean v0, p0, Lcom/tencent/qimei/am/a;->b:Z

    .line 19
    iget-boolean v0, p0, Lcom/tencent/qimei/am/a;->g:Z

    if-eqz v0, :cond_3

    .line 20
    iget v0, p0, Lcom/tencent/qimei/am/a;->d:I

    goto/16 :goto_7

    .line 21
    :cond_3
    const-class v0, Lcom/tencent/qimei/am/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 23
    const-string v0, ""

    .line 25
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cm_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/ad/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/tencent/qimei/v/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    goto :goto_3

    :cond_5
    move-wide v6, v3

    .line 31
    :goto_3
    iget-object v0, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v8, "m_f_m_t"

    invoke-virtual {v0, v8}, Lcom/tencent/qimei/ac/m;->b(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v8, v3

    if-nez v0, :cond_7

    cmp-long v0, v6, v3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    .line 32
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v0

    const-string v6, "m_f_m_t"

    invoke-virtual {v0, v6, v3, v4}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;J)V

    goto :goto_4

    :cond_7
    cmp-long v0, v6, v3

    if-nez v0, :cond_8

    const/4 v0, 0x2

    goto :goto_5

    :cond_8
    cmp-long v0, v6, v8

    if-gez v0, :cond_9

    const/4 v0, 0x3

    goto :goto_5

    :cond_9
    if-lez v0, :cond_a

    const/4 v0, 0x4

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-lez v0, :cond_d

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 37
    :cond_b
    iget-object v3, p0, Lcom/tencent/qimei/am/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v3

    const-string v4, "m_f_m_t"

    .line 38
    invoke-virtual {v3}, Lcom/tencent/qimei/ac/m;->a()Landroid/content/SharedPreferences;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_6

    .line 41
    :cond_c
    iget-object v5, v3, Lcom/tencent/qimei/ac/m;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/tencent/qimei/ac/m;->d:Ljava/lang/String;

    new-instance v7, Lcom/tencent/qimei/ac/j;

    invoke-direct {v7, v3, v4}, Lcom/tencent/qimei/ac/j;-><init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Lcom/tencent/qimei/v/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qimei/w/a;)V

    .line 42
    :cond_d
    :goto_6
    iput-boolean v1, p0, Lcom/tencent/qimei/am/a;->g:Z

    .line 43
    :goto_7
    iput v0, p0, Lcom/tencent/qimei/am/a;->d:I

    .line 46
    iget-boolean v3, p0, Lcom/tencent/qimei/am/a;->b:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/tencent/qimei/am/a;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_f

    :cond_e
    if-lez v0, :cond_f

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
