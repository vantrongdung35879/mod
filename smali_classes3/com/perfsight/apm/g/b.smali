.class public Lcom/perfsight/apm/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/Semaphore;

.field private c:Lcom/perfsight/apm/g/d;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/perfsight/apm/portal/a;


# direct methods
.method public constructor <init>(Lcom/perfsight/apm/g/d;Ljava/util/concurrent/Semaphore;Landroid/content/Context;Lcom/perfsight/apm/portal/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/g/b;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perfsight/apm/g/b;->d:Ljava/util/Map;

    iput-object p3, p0, Lcom/perfsight/apm/g/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/perfsight/apm/g/b;->b:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/perfsight/apm/g/b;->c:Lcom/perfsight/apm/g/d;

    iput-object p4, p0, Lcom/perfsight/apm/g/b;->e:Lcom/perfsight/apm/portal/a;

    return-void
.end method

.method private a(Lcom/perfsight/apm/g/c;Z)V
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/g/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/perfsight/apm/apm/p;->b(Landroid/content/Context;)Lcom/perfsight/apm/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfsight/apm/utils/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/perfsight/apm/g/c;->f:I

    iget-object v0, p0, Lcom/perfsight/apm/g/b;->e:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perfsight/apm/g/c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/perfsight/apm/g/b;->e:Lcom/perfsight/apm/portal/a;

    invoke-virtual {v0}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perfsight/apm/g/c;->l:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "Linked Session"

    invoke-static {p2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfsight/apm/g/b;->e:Lcom/perfsight/apm/portal/a;

    invoke-virtual {p2}, Lcom/perfsight/apm/portal/a;->d()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/perfsight/apm/g/c;->k:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/perfsight/apm/g/c;->n:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "APM-StepEvent Processing Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/perfsight/apm/g/b;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, v1, Lcom/perfsight/apm/g/b;->c:Lcom/perfsight/apm/g/d;

    invoke-virtual {v0}, Lcom/perfsight/apm/g/d;->a()Lcom/perfsight/apm/g/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v0, Lcom/perfsight/apm/g/c;->n:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Link session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfsight/apm/utils/p;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/perfsight/apm/g/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/perfsight/apm/g/b;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/perfsight/apm/g/b;->d:Ljava/util/Map;

    iget-object v3, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/perfsight/apm/g/b;->a(Lcom/perfsight/apm/g/c;Z)V

    :try_start_1
    iget-object v3, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    iget v4, v0, Lcom/perfsight/apm/g/c;->b:I

    iget v5, v0, Lcom/perfsight/apm/g/c;->c:I

    iget v6, v0, Lcom/perfsight/apm/g/c;->d:I

    iget-object v7, v0, Lcom/perfsight/apm/g/c;->e:Ljava/lang/String;

    iget v8, v0, Lcom/perfsight/apm/g/c;->f:I

    iget-wide v9, v0, Lcom/perfsight/apm/g/c;->g:J

    iget-wide v11, v0, Lcom/perfsight/apm/g/c;->h:J

    long-to-int v11, v11

    iget v12, v0, Lcom/perfsight/apm/g/c;->i:I

    iget-object v13, v0, Lcom/perfsight/apm/g/c;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/perfsight/apm/g/c;->l:Ljava/lang/String;

    iget-object v15, v0, Lcom/perfsight/apm/g/c;->k:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfsight/apm/g/c;->m:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v3 .. v16}, Lcom/perfsight/apm/jni/TApmNativeHelper;->packetAndSendByTDM(Ljava/lang/String;IIILjava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StepEvent error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    const-string v0, "Semaphone acquire failed"

    invoke-static {v0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void
.end method
