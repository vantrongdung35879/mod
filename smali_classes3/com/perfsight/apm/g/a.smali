.class public Lcom/perfsight/apm/g/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/perfsight/apm/g/d;

.field private c:Ljava/util/Random;

.field private d:Ljava/util/concurrent/Semaphore;

.field private e:Lcom/perfsight/apm/g/b;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/perfsight/apm/portal/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfsight/apm/portal/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/g/a;->d:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/perfsight/apm/g/a;->a:Landroid/content/Context;

    new-instance p1, Lcom/perfsight/apm/g/d;

    invoke-direct {p1}, Lcom/perfsight/apm/g/d;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/g/a;->b:Lcom/perfsight/apm/g/d;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/perfsight/apm/g/a;->d:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/g/a;->c:Ljava/util/Random;

    iput-object v0, p0, Lcom/perfsight/apm/g/a;->e:Lcom/perfsight/apm/g/b;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/perfsight/apm/g/a;->f:Ljava/util/Map;

    iput-object p2, p0, Lcom/perfsight/apm/g/a;->g:Lcom/perfsight/apm/portal/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/perfsight/apm/g/c;

    invoke-direct {v0}, Lcom/perfsight/apm/g/c;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfsight/apm/g/c;->n:Z

    iput-object p1, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfsight/apm/g/a;->b:Lcom/perfsight/apm/g/d;

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/g/d;->a(Lcom/perfsight/apm/g/c;)Z

    iget-object p1, p0, Lcom/perfsight/apm/g/a;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public a(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/perfsight/apm/g/a;->e:Lcom/perfsight/apm/g/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfsight/apm/g/b;

    iget-object v1, p0, Lcom/perfsight/apm/g/a;->b:Lcom/perfsight/apm/g/d;

    iget-object v2, p0, Lcom/perfsight/apm/g/a;->d:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/perfsight/apm/g/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/perfsight/apm/g/a;->g:Lcom/perfsight/apm/portal/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perfsight/apm/g/b;-><init>(Lcom/perfsight/apm/g/d;Ljava/util/concurrent/Semaphore;Landroid/content/Context;Lcom/perfsight/apm/portal/a;)V

    iput-object v0, p0, Lcom/perfsight/apm/g/a;->e:Lcom/perfsight/apm/g/b;

    invoke-virtual {v0}, Lcom/perfsight/apm/g/b;->a()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "EventCategory is NULL"

    invoke-static {p1}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "NA"

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object p5, v0

    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move-object p6, v0

    :cond_5
    new-instance v0, Lcom/perfsight/apm/g/c;

    invoke-direct {v0}, Lcom/perfsight/apm/g/c;-><init>()V

    iput-object p1, v0, Lcom/perfsight/apm/g/c;->a:Ljava/lang/String;

    iput p2, v0, Lcom/perfsight/apm/g/c;->b:I

    iput p3, v0, Lcom/perfsight/apm/g/c;->c:I

    iput p4, v0, Lcom/perfsight/apm/g/c;->d:I

    iput-object p5, v0, Lcom/perfsight/apm/g/c;->e:Ljava/lang/String;

    iput-object p6, v0, Lcom/perfsight/apm/g/c;->m:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, v0, Lcom/perfsight/apm/g/c;->g:J

    iget-object p2, p0, Lcom/perfsight/apm/g/a;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_6

    iget-wide p3, v0, Lcom/perfsight/apm/g/c;->g:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    sub-long/2addr p3, p5

    iput-wide p3, v0, Lcom/perfsight/apm/g/c;->h:J

    goto :goto_0

    :cond_6
    const-wide/16 p2, 0x0

    iput-wide p2, v0, Lcom/perfsight/apm/g/c;->h:J

    :goto_0
    iget-object p2, p0, Lcom/perfsight/apm/g/a;->f:Ljava/util/Map;

    iget-wide p3, v0, Lcom/perfsight/apm/g/c;->g:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/perfsight/apm/g/a;->c:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, v0, Lcom/perfsight/apm/g/c;->i:I

    iget-object p1, p0, Lcom/perfsight/apm/g/a;->b:Lcom/perfsight/apm/g/d;

    invoke-virtual {p1, v0}, Lcom/perfsight/apm/g/d;->a(Lcom/perfsight/apm/g/c;)Z

    iget-object p1, p0, Lcom/perfsight/apm/g/a;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
