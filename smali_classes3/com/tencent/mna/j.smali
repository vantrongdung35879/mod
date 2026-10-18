.class public Lcom/tencent/mna/j;
.super Ljava/lang/Object;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/j$b;,
        Lcom/tencent/mna/j$c;
    }
.end annotation


# static fields
.field private static final w:[Ljava/lang/String;


# instance fields
.field private a:I

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final c:Ljava/lang/Object;

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/StringBuilder;

.field private f:Ljava/lang/StringBuilder;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/tencent/mna/d1;

.field private p:Lcom/tencent/mna/d1;

.field private q:Lcom/tencent/mna/e1;

.field private r:Lcom/tencent/mna/e1;

.field private s:Z

.field t:I

.field private u:Lcom/tencent/mna/j$b;

.field private v:Lcom/tencent/mna/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "first_nic"

    const-string v9, "end_nic"

    const-string v0, "rout_"

    const-string v1, "masterip"

    const-string v2, "negip"

    const-string/jumbo v3, "token"

    const-string v4, "battery"

    const-string v5, "gamever"

    const-string v6, "pre_smart"

    const-string v7, "jumpvalue"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/j;->w:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/j;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/j;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/mna/j;->h:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/mna/j;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/mna/j;->j:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tencent/mna/j;->k:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tencent/mna/j;->l:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/tencent/mna/j;->m:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tencent/mna/j;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    .line 48
    iput-object v0, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    .line 49
    iput-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    .line 50
    iput-object v0, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    const/16 v1, 0x1f4

    .line 52
    iput v1, p0, Lcom/tencent/mna/j;->t:I

    .line 57
    invoke-static {}, Lcom/tencent/mna/d;->m()I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/j;->t:I

    if-gtz v2, :cond_0

    .line 59
    iput v1, p0, Lcom/tencent/mna/j;->t:I

    .line 62
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->M0()I

    move-result v1

    .line 63
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v3

    .line 65
    invoke-static {}, Lcom/tencent/mna/d;->q()I

    move-result v4

    .line 66
    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mna/e0;->a(ILjava/lang/String;II)Lcom/tencent/mna/d1;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/tencent/mna/j;->s:Z

    .line 71
    iput v1, p0, Lcom/tencent/mna/j;->a:I

    .line 72
    new-instance v1, Lcom/tencent/mna/j$b;

    invoke-direct {v1, v0}, Lcom/tencent/mna/j$b;-><init>(Lcom/tencent/mna/j$a;)V

    iput-object v1, p0, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    .line 73
    new-instance v0, Lcom/tencent/mna/l2;

    sget-object v3, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    sget-wide v8, Lcom/tencent/mna/t0;->f:J

    .line 77
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/tencent/mna/l2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mna/j;->v:Lcom/tencent/mna/l2;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccFacade:::speedIp = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], speedTestTimeout = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/mna/j$c;ZZ)I
    .locals 1

    .line 635
    sget-object v0, Lcom/tencent/mna/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p1, -0xa

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/tencent/mna/j;->a()I

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 646
    invoke-virtual {p0}, Lcom/tencent/mna/j;->d()I

    move-result p1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/tencent/mna/j;->a()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 92
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x2c

    .line 96
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v0, :cond_1

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, p2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 267
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mna/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    .line 274
    const-string v0, "devid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-static {p2}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "devkey"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mnaver"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    sget-wide v0, Lcom/tencent/mna/t0;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "origtime"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "endtime"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "hardware_os"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 19
    :cond_0
    sget-object v1, Lcom/tencent/mna/j;->w:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "directSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x3

    return v0

    .line 80
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-interface {v0, v1}, Lcom/tencent/mna/d1;->c(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 83
    throw v0
.end method

.method public a(I)I
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    if-nez v0, :cond_0

    .line 283
    const-string p1, "AccFacade:::directSpeedTester is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x3

    return p1

    .line 302
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 303
    const-string v1, "lastdelay"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "stime"

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "appid"

    sget-object v2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 305
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "pvpid"

    sget-object v2, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 306
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "openid"

    sget-object v2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 307
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-interface {v0, v1, p1}, Lcom/tencent/mna/d1;->a(ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catch_0
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 316
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/tencent/mna/j;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v4, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 102
    :goto_1
    iget-object v5, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, ""

    .line 103
    :goto_2
    iget-object v6, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v6, ""

    .line 104
    :goto_3
    iget-object v7, p0, Lcom/tencent/mna/j;->g:Ljava/lang/String;

    .line 105
    iget-object v8, p0, Lcom/tencent/mna/j;->h:Ljava/lang/String;

    .line 106
    iget-object v9, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 107
    iget-object v9, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    iget-object v9, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 110
    iget-object v9, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    :cond_5
    iget-object v9, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 113
    iget-object v9, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 115
    :cond_6
    const-string v9, ""

    iput-object v9, p0, Lcom/tencent/mna/j;->g:Ljava/lang/String;

    .line 116
    const-string v9, ""

    iput-object v9, p0, Lcom/tencent/mna/j;->h:Ljava/lang/String;

    .line 117
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    iget-object v3, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 121
    :try_start_1
    iget-object v3, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    if-nez v3, :cond_7

    .line 122
    const-string p1, "directSpeedTester is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x3

    return p1

    .line 189
    :cond_7
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 191
    const-string v9, "openid"

    sget-object v10, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v9, "pvpid"

    sget-object v10, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_8

    .line 195
    invoke-direct {p0, v3, p2}, Lcom/tencent/mna/j;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 197
    :cond_8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 198
    const-string v9, "delay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v9, "fps"

    invoke-virtual {p2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v9, "move"

    invoke-virtual {p2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v9, "click"

    invoke-virtual {p2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v9, "ec215"

    invoke-virtual {p2, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v9, "ec216"

    invoke-virtual {p2, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v9, "curInfo"

    invoke-virtual {v3, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 207
    iget-object v9, p0, Lcom/tencent/mna/j;->i:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 208
    const-string v9, "delay"

    iget-object v10, p0, Lcom/tencent/mna/j;->i:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v9, "fps"

    iget-object v10, p0, Lcom/tencent/mna/j;->j:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v9, "move"

    iget-object v10, p0, Lcom/tencent/mna/j;->k:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v9, "click"

    iget-object v10, p0, Lcom/tencent/mna/j;->l:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v9, "ec215"

    iget-object v10, p0, Lcom/tencent/mna/j;->m:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v9, "ec216"

    iget-object v10, p0, Lcom/tencent/mna/j;->n:Ljava/lang/String;

    invoke-virtual {p2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_9
    const-string v9, "lastInfo"

    invoke-virtual {v3, v9, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 223
    :goto_4
    iget-object v1, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    iget v3, p0, Lcom/tencent/mna/j;->t:I

    invoke-interface {v1, v3, p2, v2}, Lcom/tencent/mna/d1;->a(ILjava/lang/String;Z)I

    move-result v1

    add-int/lit8 v3, v0, -0x1

    const/16 v9, 0x1f4

    if-lez v0, :cond_c

    if-ltz v1, :cond_b

    if-ge v1, v9, :cond_b

    goto :goto_5

    :cond_b
    move v0, v3

    goto :goto_4

    :cond_c
    :goto_5
    if-ltz v1, :cond_e

    if-lt v1, v9, :cond_d

    goto :goto_6

    .line 236
    :cond_d
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->i:Ljava/lang/String;

    .line 237
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->j:Ljava/lang/String;

    .line 238
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->k:Ljava/lang/String;

    .line 239
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->l:Ljava/lang/String;

    .line 240
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->m:Ljava/lang/String;

    .line 241
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/j;->n:Ljava/lang/String;

    goto :goto_7

    .line 242
    :cond_e
    :goto_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/j;->i:Ljava/lang/String;

    .line 243
    iput-object v4, p0, Lcom/tencent/mna/j;->j:Ljava/lang/String;

    .line 244
    iput-object v5, p0, Lcom/tencent/mna/j;->k:Ljava/lang/String;

    .line 245
    iput-object v6, p0, Lcom/tencent/mna/j;->l:Ljava/lang/String;

    .line 246
    iput-object v7, p0, Lcom/tencent/mna/j;->m:Ljava/lang/String;

    .line 247
    iput-object v8, p0, Lcom/tencent/mna/j;->n:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :goto_7
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :catch_0
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x2

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 265
    throw p1

    :catchall_1
    move-exception p1

    .line 266
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/j$c;IIIII)Lcom/tencent/mna/o1;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 384
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-nez v5, :cond_1

    .line 385
    const-string v2, "AccFacade:::check all delay switch not open"

    invoke-static {v2}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/tencent/mna/d;->I0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {v1, v0, v7, v9}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/j$c;ZZ)I

    move-result v6

    .line 391
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result v8

    goto :goto_0

    :cond_0
    const/16 v6, -0xa

    .line 393
    :goto_0
    new-instance v2, Lcom/tencent/mna/o1;

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/j$c;->isInPvp()Z

    move-result v0

    invoke-direct {v2, v0, v6, v8}, Lcom/tencent/mna/o1;-><init>(ZII)V

    return-object v2

    .line 396
    :cond_1
    iget v5, v1, Lcom/tencent/mna/j;->a:I

    add-int/lit8 v10, v5, 0x1

    iput v10, v1, Lcom/tencent/mna/j;->a:I

    invoke-static {}, Lcom/tencent/mna/d;->d0()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AccFacade:::check all delay times limit, jumpCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/tencent/mna/j;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->d0()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 398
    new-instance v2, Lcom/tencent/mna/o1;

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/j$c;->isInPvp()Z

    move-result v0

    const/16 v3, -0xb

    invoke-direct {v2, v0, v3, v8}, Lcom/tencent/mna/o1;-><init>(ZII)V

    return-object v2

    .line 401
    :cond_2
    new-instance v5, Lcom/tencent/mna/o1;

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/j$c;->isInPvp()Z

    move-result v10

    invoke-direct {v5, v10}, Lcom/tencent/mna/o1;-><init>(Z)V

    .line 403
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v9, :cond_4

    .line 404
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v10

    if-ne v10, v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 406
    :goto_2
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v9, :cond_6

    .line 407
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v12

    if-ne v12, v13, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v12, 0x1

    .line 409
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v5, Lcom/tencent/mna/o1;->c:J

    .line 410
    iput v4, v5, Lcom/tencent/mna/o1;->d:I

    .line 411
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/j$c;->getFlag()I

    move-result v14

    iput v14, v5, Lcom/tencent/mna/o1;->e:I

    .line 414
    iput v3, v5, Lcom/tencent/mna/o1;->f:I

    move/from16 v14, p3

    .line 415
    iput v14, v5, Lcom/tencent/mna/o1;->g:I

    if-gtz v3, :cond_7

    if-eqz v12, :cond_7

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/j;->a()I

    move-result v3

    iput v3, v5, Lcom/tencent/mna/o1;->f:I

    .line 420
    :cond_7
    iget v3, v5, Lcom/tencent/mna/o1;->g:I

    if-gtz v3, :cond_8

    if-eqz v10, :cond_8

    .line 422
    iput v8, v5, Lcom/tencent/mna/o1;->g:I

    .line 425
    :cond_8
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v3

    .line 427
    iput v8, v5, Lcom/tencent/mna/o1;->h:I

    .line 428
    invoke-static {}, Lcom/tencent/mna/d;->r()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 429
    invoke-static {v3, v9}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;I)I

    move-result v14

    iput v14, v5, Lcom/tencent/mna/o1;->h:I

    .line 432
    :cond_9
    iput v8, v5, Lcom/tencent/mna/o1;->i:I

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/j$c;->isInPvp()Z

    move-result v14

    .line 436
    invoke-static {}, Lcom/tencent/mna/d;->N1()Z

    move-result v15

    .line 438
    iput v8, v5, Lcom/tencent/mna/o1;->j:I

    .line 439
    iput v8, v5, Lcom/tencent/mna/o1;->C:I

    .line 440
    const-string v6, "-1"

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 444
    iget-object v6, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget v8, v6, Lcom/tencent/mna/j$b;->j:I

    iput v8, v5, Lcom/tencent/mna/o1;->C:I

    .line 445
    iget-object v6, v6, Lcom/tencent/mna/j$b;->i:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    goto :goto_6

    .line 447
    :cond_a
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v6

    if-ne v6, v9, :cond_b

    .line 449
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 450
    iput v9, v5, Lcom/tencent/mna/o1;->C:I

    goto :goto_5

    .line 451
    :cond_b
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 453
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 454
    iput v9, v5, Lcom/tencent/mna/o1;->C:I

    if-eqz v6, :cond_c

    .line 455
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_e

    .line 458
    :cond_c
    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mna/n1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 459
    iput v11, v5, Lcom/tencent/mna/o1;->C:I

    goto :goto_5

    .line 463
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/j;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 464
    iput v7, v5, Lcom/tencent/mna/o1;->C:I

    .line 467
    :cond_e
    :goto_5
    iget-object v6, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget v8, v5, Lcom/tencent/mna/o1;->C:I

    iput v8, v6, Lcom/tencent/mna/j$b;->j:I

    .line 468
    iget-object v8, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    iput-object v8, v6, Lcom/tencent/mna/j$b;->i:Ljava/lang/String;

    .line 470
    iget-object v6, v1, Lcom/tencent/mna/j;->v:Lcom/tencent/mna/l2;

    invoke-virtual {v6, v8}, Lcom/tencent/mna/l2;->a(Ljava/lang/String;)V

    .line 473
    :goto_6
    iget v6, v5, Lcom/tencent/mna/o1;->C:I

    if-eq v6, v9, :cond_10

    if-ne v6, v11, :cond_f

    goto :goto_7

    .line 478
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/j;->b()I

    move-result v6

    iput v6, v5, Lcom/tencent/mna/o1;->j:I

    goto :goto_8

    .line 479
    :cond_10
    :goto_7
    iget-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/tencent/mna/o1;->j:I

    .line 484
    :goto_8
    iget-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_12

    .line 485
    :cond_11
    const-string v6, "-3"

    iput-object v6, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 489
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/16 v11, -0xa

    :goto_9
    const/16 v9, 0x2c

    if-ge v8, v13, :cond_14

    .line 491
    invoke-direct {v1, v0, v10, v12}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/j$c;ZZ)I

    move-result v11

    if-nez v8, :cond_13

    .line 493
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 495
    :cond_13
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 498
    :cond_14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mna/o1;->b:Ljava/lang/String;

    .line 500
    iput v11, v5, Lcom/tencent/mna/o1;->k:I

    move/from16 v0, p6

    .line 502
    iput v0, v5, Lcom/tencent/mna/o1;->l:I

    .line 504
    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->m:I

    const/4 v6, -0x1

    .line 506
    iput v6, v5, Lcom/tencent/mna/o1;->n:I

    .line 507
    iput v6, v5, Lcom/tencent/mna/o1;->o:I

    .line 508
    iput v6, v5, Lcom/tencent/mna/o1;->p:I

    .line 509
    iput v6, v5, Lcom/tencent/mna/o1;->q:I

    .line 510
    iput v6, v5, Lcom/tencent/mna/o1;->r:I

    .line 511
    invoke-static/range {p5 .. p5}, Lcom/tencent/mna/base/utils/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v14, :cond_15

    .line 514
    iget-object v0, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget v6, v0, Lcom/tencent/mna/j$b;->a:I

    iput v6, v5, Lcom/tencent/mna/o1;->n:I

    .line 515
    iget v6, v0, Lcom/tencent/mna/j$b;->b:I

    iput v6, v5, Lcom/tencent/mna/o1;->o:I

    .line 516
    iget v6, v0, Lcom/tencent/mna/j$b;->c:I

    iput v6, v5, Lcom/tencent/mna/o1;->p:I

    .line 517
    iget v6, v0, Lcom/tencent/mna/j$b;->d:I

    iput v6, v5, Lcom/tencent/mna/o1;->q:I

    .line 518
    iget v0, v0, Lcom/tencent/mna/j$b;->e:I

    iput v0, v5, Lcom/tencent/mna/o1;->r:I

    goto :goto_b

    :cond_15
    if-eqz v15, :cond_16

    const/4 v0, -0x2

    .line 521
    iput v0, v5, Lcom/tencent/mna/o1;->n:I

    .line 523
    iget-object v6, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iput v0, v6, Lcom/tencent/mna/j$b;->a:I

    .line 525
    invoke-static {v3}, Lcom/tencent/mna/base/utils/WifiUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 526
    array-length v6, v0

    if-le v6, v13, :cond_16

    .line 528
    :try_start_0
    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/mna/o1;->o:I

    const/4 v6, 0x1

    .line 529
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/mna/o1;->p:I

    const/4 v6, 0x2

    .line 530
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/tencent/mna/o1;->q:I

    .line 531
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->r:I

    .line 533
    iget-object v6, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget v7, v5, Lcom/tencent/mna/o1;->o:I

    iput v7, v6, Lcom/tencent/mna/j$b;->b:I

    .line 534
    iget v7, v5, Lcom/tencent/mna/o1;->p:I

    iput v7, v6, Lcom/tencent/mna/j$b;->c:I

    .line 535
    iget v7, v5, Lcom/tencent/mna/o1;->q:I

    iput v7, v6, Lcom/tencent/mna/j$b;->d:I

    .line 536
    iput v0, v6, Lcom/tencent/mna/j$b;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AccFacade:::checkAllDelay wifiSignal parse exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 544
    :cond_16
    :goto_b
    invoke-static {v3}, Lcom/tencent/mna/base/utils/WifiUtil;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->s:I

    move/from16 v6, p7

    .line 545
    iput v6, v5, Lcom/tencent/mna/o1;->t:I

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 547
    iput-wide v6, v5, Lcom/tencent/mna/o1;->u:D

    .line 548
    iput-wide v6, v5, Lcom/tencent/mna/o1;->v:D

    if-eqz v14, :cond_17

    .line 551
    iget-object v0, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget-wide v6, v0, Lcom/tencent/mna/j$b;->f:D

    iput-wide v6, v5, Lcom/tencent/mna/o1;->u:D

    .line 552
    iget-wide v6, v0, Lcom/tencent/mna/j$b;->g:D

    iput-wide v6, v5, Lcom/tencent/mna/o1;->v:D

    goto :goto_c

    :cond_17
    if-eqz v15, :cond_18

    .line 555
    iput-wide v6, v5, Lcom/tencent/mna/o1;->u:D

    .line 556
    iput-wide v6, v5, Lcom/tencent/mna/o1;->v:D

    .line 558
    iget-object v0, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iput-wide v6, v0, Lcom/tencent/mna/j$b;->f:D

    .line 559
    iput-wide v6, v0, Lcom/tencent/mna/j$b;->g:D

    .line 562
    :cond_18
    :goto_c
    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->w:I

    const/16 v6, -0xa

    .line 564
    iput v6, v5, Lcom/tencent/mna/o1;->x:I

    .line 565
    invoke-static {}, Lcom/tencent/mna/d;->t1()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_19

    invoke-static {}, Lcom/tencent/mna/d;->r()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 566
    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/tencent/mna/i2;->c(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->x:I

    :cond_19
    const v0, 0xffff

    .line 568
    iput v0, v5, Lcom/tencent/mna/o1;->y:I

    if-eqz v14, :cond_1a

    .line 571
    iget-object v0, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iget v0, v0, Lcom/tencent/mna/j$b;->h:I

    iput v0, v5, Lcom/tencent/mna/o1;->y:I

    goto :goto_d

    :cond_1a
    if-eqz v15, :cond_1b

    .line 574
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->e()I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->y:I

    .line 576
    iget-object v6, v1, Lcom/tencent/mna/j;->u:Lcom/tencent/mna/j$b;

    iput v0, v6, Lcom/tencent/mna/j$b;->h:I

    .line 580
    :cond_1b
    :goto_d
    invoke-static {v3, v4}, Lcom/tencent/mna/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mna/o1;->z:Ljava/lang/String;

    const/16 v4, 0x5f

    if-eqz v0, :cond_1c

    .line 583
    invoke-virtual {v0, v4, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mna/o1;->z:Ljava/lang/String;

    :cond_1c
    const/4 v6, -0x1

    .line 586
    iput v6, v5, Lcom/tencent/mna/o1;->A:I

    .line 587
    iput v6, v5, Lcom/tencent/mna/o1;->B:I

    if-eqz v15, :cond_1d

    .line 589
    invoke-static {v3}, Lcom/tencent/mna/base/utils/b;->c(Landroid/content/Context;)Landroid/telephony/CellInfo;

    move-result-object v0

    .line 590
    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->a(Landroid/telephony/CellInfo;)I

    move-result v3

    iput v3, v5, Lcom/tencent/mna/o1;->A:I

    .line 591
    invoke-static {v0}, Lcom/tencent/mna/base/utils/b;->b(Landroid/telephony/CellInfo;)I

    move-result v0

    iput v0, v5, Lcom/tencent/mna/o1;->B:I

    .line 594
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    iget-wide v6, v5, Lcom/tencent/mna/o1;->c:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->d:I

    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->e:I

    .line 599
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->f:I

    .line 600
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->g:I

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->h:I

    .line 602
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->i:I

    .line 603
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->j:I

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->k:I

    .line 605
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->l:I

    .line 606
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->m:I

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->n:I

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->o:I

    .line 609
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->p:I

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->q:I

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->r:I

    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->s:I

    .line 613
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->t:I

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/tencent/mna/o1;->u:D

    .line 615
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/tencent/mna/o1;->v:D

    .line 616
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->w:I

    .line 617
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->x:I

    .line 618
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->y:I

    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/tencent/mna/o1;->z:Ljava/lang/String;

    .line 620
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->A:I

    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->B:I

    .line 622
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/tencent/mna/o1;->C:I

    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcom/tencent/mna/o1;->D:Ljava/lang/String;

    .line 624
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1e

    .line 627
    sget-object v3, Lcom/tencent/mna/base/report/a$a;->JUMPVALUE:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 630
    :cond_1e
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 631
    iget v0, v5, Lcom/tencent/mna/o1;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/y3;->d(Ljava/lang/String;)V

    .line 634
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[N]DIAGNOSE JUMP_VALUES("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/tencent/mna/j;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")\uff0c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/tencent/mna/o1;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return-object v5
.end method

.method public a(JJLjava/lang/String;J)V
    .locals 8

    .line 648
    iget-object v0, p0, Lcom/tencent/mna/j;->v:Lcom/tencent/mna/l2;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    .line 649
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/l2;->a(JJLjava/lang/String;J)V

    return-void
.end method

.method public a(Lcom/tencent/mna/a1;Lcom/tencent/mna/f1;Z)V
    .locals 5

    const-string v0, "AccFacade:::setMobileSpeedTest succeed, mOtherNetIp = ["

    const-string v1, "AccFacade:::setMobileSpeedTest fail, exception:"

    .line 16
    iget-object v2, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez p2, :cond_0

    .line 19
    :try_start_0
    const-string p1, "AccFacade:::setMobileSpeedTest failed, networkBinding is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 43
    :try_start_1
    invoke-interface {p2}, Lcom/tencent/mna/f1;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->a1()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p3, :cond_2

    .line 44
    invoke-interface {p2}, Lcom/tencent/mna/f1;->e()I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/mna/d;->b1()I

    move-result p3

    .line 47
    :goto_1
    invoke-static {}, Lcom/tencent/mna/d;->M0()I

    move-result v3

    .line 50
    invoke-static {}, Lcom/tencent/mna/d;->q()I

    move-result v4

    .line 51
    invoke-static {v3, v2, p3, v4, p2}, Lcom/tencent/mna/e0;->a(ILjava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/d1;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    .line 59
    invoke-static {}, Lcom/tencent/mna/d;->q()I

    move-result v3

    .line 60
    invoke-interface {p1, v2, p3, v3, p2}, Lcom/tencent/mna/a1;->a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 67
    :goto_2
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_3
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_4
    iget-object p2, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 70
    throw p1
.end method

.method public a(Lcom/tencent/mna/e1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    const-string p1, "AccFacade:::setSpeedTester failed, speedTester is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 11
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    .line 12
    const-string p1, "AccFacade:::setSpeedTester succeed"

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 15
    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tencent/mna/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iput-object p1, p0, Lcom/tencent/mna/j;->g:Ljava/lang/String;

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tencent/mna/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/j;->d:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, p1}, Lcom/tencent/mna/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/tencent/mna/j;->e:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/tencent/mna/j;->f:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p3}, Lcom/tencent/mna/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "AccFacade:::release isCurFdMobile:"

    const-string v1, "AccFacade:::release exception: "

    .line 650
    invoke-static {}, Lcom/tencent/mna/h;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "-40000_-40000"

    goto :goto_0

    :cond_0
    const v2, -0x9c40

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/tencent/mna/j;->a(Ljava/lang/String;Ljava/util/Map;)I

    .line 653
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 656
    :try_start_0
    iget-object p1, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 657
    invoke-interface {p1}, Lcom/tencent/mna/d1;->a()V

    .line 658
    iput-object v2, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    if-eqz p1, :cond_2

    .line 662
    invoke-interface {p1}, Lcom/tencent/mna/d1;->a()V

    .line 663
    iput-object v2, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    .line 666
    :cond_2
    iget-object p1, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-eqz p1, :cond_3

    .line 667
    invoke-interface {p1}, Lcom/tencent/mna/e1;->a()V

    .line 668
    iput-object v2, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    .line 671
    :cond_3
    iget-object p1, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    if-eqz p1, :cond_4

    .line 672
    invoke-interface {p1}, Lcom/tencent/mna/e1;->a()V

    .line 673
    iput-object v2, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    .line 676
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mna/j;->s:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 682
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    const/4 p1, 0x0

    return p1

    :goto_1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 685
    throw p1
.end method

.method public a(Z)Z
    .locals 5

    const-string v0, "AccFacade:::switchNetworkBinding call: "

    const-string v1, "AccFacade:::switchNetworkBinding exception: "

    .line 317
    iget-object v2, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v2, 0x0

    .line 319
    :try_start_0
    iget-object v3, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    if-nez v3, :cond_0

    .line 320
    const-string p1, "AccFacade:::switchNetworkBinding failed, not setMobileSpeedTest"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v2

    :cond_0
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 344
    :try_start_1
    iget-boolean v4, p0, Lcom/tencent/mna/j;->s:Z

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v4, p0, Lcom/tencent/mna/j;->s:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v3

    .line 364
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 366
    iget-boolean p1, p0, Lcom/tencent/mna/j;->s:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/tencent/mna/j;->s:Z

    .line 368
    iget-object p1, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    .line 369
    iget-object v0, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    iput-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    .line 370
    iput-object p1, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    .line 372
    iget-object p1, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    .line 373
    iget-object v0, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    iput-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    .line 374
    iput-object p1, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 383
    throw p1
.end method

.method public b()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "AccFacade:::mForwardSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x3

    return v0

    .line 53
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tencent/mna/j;->t:I

    .line 54
    invoke-interface {v0, v1}, Lcom/tencent/mna/e1;->a(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 57
    throw v0
.end method

.method public b(I)I
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-nez v0, :cond_0

    .line 7
    const-string p1, "AccFacade:::mForwardSpeedTester is null"

    invoke-static {p1}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x3

    return p1

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v1, "lastdelay"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "stime"

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "appid"

    sget-object v2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "pvpid"

    sget-object v2, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "openid"

    sget-object v2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    iget v1, p0, Lcom/tencent/mna/j;->t:I

    .line 35
    invoke-interface {v0, v1, p1}, Lcom/tencent/mna/e1;->a(ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catch_0
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/tencent/mna/j;->h:Ljava/lang/String;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "AccFacade:::mForwardSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 25
    const-string v0, "0.0.0.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/tencent/mna/e1;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    throw v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->o:Lcom/tencent/mna/d1;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/tencent/mna/d1;->b(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/tencent/mna/d1;->b(I)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1}, Lcom/tencent/mna/e1;->b(I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, p1}, Lcom/tencent/mna/e1;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 18
    throw p1
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->q:Lcom/tencent/mna/e1;

    if-nez v0, :cond_0

    .line 4
    const-string v0, "AccFacade:::mForwardSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x3

    return v0

    .line 10
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-interface {v0, v1}, Lcom/tencent/mna/e1;->c(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 13
    throw v0
.end method

.method public d(I)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/tencent/mna/j;->v:Lcom/tencent/mna/l2;

    invoke-virtual {v0, p1}, Lcom/tencent/mna/l2;->a(I)V

    return-void
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->p:Lcom/tencent/mna/d1;

    if-nez v0, :cond_0

    .line 4
    const-string v0, "AccFacade:::mOtherNetForwardSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x3

    return v0

    .line 10
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-interface {v0, v1}, Lcom/tencent/mna/d1;->c(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 13
    throw v0
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/j;->r:Lcom/tencent/mna/e1;

    if-nez v0, :cond_0

    .line 4
    const-string v0, "AccFacade:::mOtherNetForwardSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, -0x3

    return v0

    .line 11
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/tencent/mna/j;->t:I

    .line 12
    invoke-interface {v0, v1}, Lcom/tencent/mna/e1;->c(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/j;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 15
    throw v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j;->v:Lcom/tencent/mna/l2;

    invoke-virtual {v0}, Lcom/tencent/mna/l2;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccelerateTesterFacade{mIsCurFdMobile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/mna/j;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFdTimeout=300, mSpeedTestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/j;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
