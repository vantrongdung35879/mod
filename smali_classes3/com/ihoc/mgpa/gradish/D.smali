.class public Lcom/ihoc/mgpa/gradish/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/q$a;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FileMoverExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/D;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->d:Ljava/util/ArrayList;

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a()V
    .locals 6

    .line 50
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 51
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/D;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/D;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ihoc/mgpa/gradish/q;

    .line 53
    invoke-virtual {v3}, Lcom/ihoc/mgpa/gradish/q;->b()Lcom/ihoc/mgpa/gradish/U;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v3}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v3

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4, v3}, Lcom/ihoc/mgpa/gradish/U;->a(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/r0;II)V
    .locals 2

    const/4 p2, 0x3

    if-eq p3, p2, :cond_0

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 40
    :cond_0
    sget-object p2, Lcom/ihoc/mgpa/gradish/D;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileMoveExecutor remove task of fromUri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "in state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/D;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ihoc/mgpa/gradish/q;

    if-eqz p1, :cond_1

    .line 44
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/D;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/D;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 46
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/D;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/D;->a()V

    :cond_2
    return-void
.end method

.method public a(Lcom/ihoc/mgpa/gradish/q;)Z
    .locals 7

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ihoc/mgpa/gradish/q;

    const-wide/16 v1, 0x32

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 7
    sget-object v4, Lcom/ihoc/mgpa/gradish/D;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Find a already CopyTask fromUri = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v6

    iget-object v6, v6, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v4, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->f()Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v0, v3}, Lcom/ihoc/mgpa/gradish/q;->b(Z)V

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v5

    if-eq v5, v3, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/q;->c()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 24
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/D;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_3

    .line 26
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 27
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A pausing task is reSubmit fromUri = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object p1

    iget-object p1, p1, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/D;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/ihoc/mgpa/gradish/D;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return v3

    .line 35
    :cond_5
    sget-object v0, Lcom/ihoc/mgpa/gradish/D;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "submit a new CopyTask fromUri = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v5

    iget-object v5, v5, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v4

    iget-object v4, v4, Lcom/ihoc/mgpa/gradish/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1, p0}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/q$a;)V

    .line 38
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/D;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/D;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
