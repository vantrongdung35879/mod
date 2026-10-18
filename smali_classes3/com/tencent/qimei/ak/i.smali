.class public final Lcom/tencent/qimei/ak/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/ak/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ak/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/tencent/qimei/ad/g;->a()Lcom/tencent/qimei/ad/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 2
    iget-object v1, v1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ad/g;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/qimei/z/b;->a()Lcom/tencent/qimei/z/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 6
    iget-object v1, v1, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/qimei/z/b;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/tencent/qimei/z/b;->a()Lcom/tencent/qimei/z/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 10
    iget-object v2, v1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/tencent/qimei/z/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 13
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 14
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/tencent/qimei/ax/e;->a(Ljava/lang/String;)Lcom/tencent/qimei/ax/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 16
    iget-object v2, v1, Lcom/tencent/qimei/ak/n;->e:Landroid/content/Context;

    .line 17
    iput-object v2, v0, Lcom/tencent/qimei/ax/e;->g:Landroid/content/Context;

    .line 18
    iput-object v0, v0, Lcom/tencent/qimei/ax/e;->h:Lcom/tencent/qimei/ax/e;

    .line 19
    iget-object v0, v1, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/tencent/qimei/at/a;->a(Ljava/lang/String;)Lcom/tencent/qimei/at/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/at/a;->a()V

    .line 22
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 23
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/tencent/qimei/ak/b;->a(Ljava/lang/String;)Lcom/tencent/qimei/ak/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/ak/b;->a()V

    .line 26
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 27
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 28
    sget-object v1, Lcom/tencent/qimei/report/beat/BeatType;->INIT:Lcom/tencent/qimei/report/beat/BeatType;

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/tencent/qimei/aj/c;->a(Ljava/lang/String;Lcom/tencent/qimei/report/beat/BeatType;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 31
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/tencent/qimei/ac/m;->a(Ljava/lang/String;)Lcom/tencent/qimei/ac/m;

    move-result-object v1

    const-string v2, "is_first"

    invoke-virtual {v1, v2}, Lcom/tencent/qimei/ac/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    sget-object v1, Lcom/tencent/qimei/ap/g;->a:Ljava/util/Random;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 36
    invoke-static {}, Lcom/tencent/qimei/u/a;->a()Lcom/tencent/qimei/u/a;

    move-result-object v2

    mul-int/lit16 v3, v1, 0x3e8

    int-to-long v3, v3

    new-instance v5, Lcom/tencent/qimei/am/b;

    invoke-direct {v5, v1, v0}, Lcom/tencent/qimei/am/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/qimei/u/a;->a(JLjava/lang/Runnable;)V

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 38
    iget-object v0, v0, Lcom/tencent/qimei/ak/n;->d:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Lcom/tencent/qimei/ak/p;->b(Ljava/lang/String;)Lcom/tencent/qimei/ak/p;

    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/tencent/qimei/ak/p;->e:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v0, v0, Lcom/tencent/qimei/ak/p;->a:Ljava/lang/String;

    const-string v1, "1"

    .line 42
    invoke-static {}, Lcom/tencent/qimei/ai/h;->a()Lcom/tencent/qimei/ai/h;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/tencent/qimei/q/b;->a(Lcom/tencent/qimei/ai/h;)Lcom/tencent/qimei/ai/e;

    move-result-object v3

    .line 44
    const-string v4, "6"

    const-string v5, "1010"

    .line 45
    iget-object v6, v3, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v4, "7"

    .line 47
    iget-object v5, v3, Lcom/tencent/qimei/ai/e;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "v2"

    invoke-virtual {v2, v3, v1, v0}, Lcom/tencent/qimei/ai/h;->a(Lcom/tencent/qimei/ai/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/tencent/qimei/ak/i;->a:Lcom/tencent/qimei/ak/n;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v1, Lcom/tencent/qimei/ak/k;

    invoke-direct {v1, v0}, Lcom/tencent/qimei/ak/k;-><init>(Lcom/tencent/qimei/ak/n;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/ak/n;->getQimei(Lcom/tencent/qimei/sdk/IAsyncQimeiListener;)V

    return-void

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    throw v1
.end method
