.class public Lcom/tencent/mna/l2;
.super Ljava/lang/Object;
.source "PreciseKartinQuery.java"


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/tencent/mna/c2$b;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/mna/y2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile p:Z

.field private q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/l2;->a:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/tencent/mna/l2;->b:J

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mna/l2;->d:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/tencent/mna/l2;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/tencent/mna/l2;->f:J

    .line 9
    iput-object v1, p0, Lcom/tencent/mna/l2;->g:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/tencent/mna/l2;->h:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/tencent/mna/l2;->i:Ljava/lang/String;

    .line 12
    iput-wide v2, p0, Lcom/tencent/mna/l2;->j:J

    .line 13
    iput-object v1, p0, Lcom/tencent/mna/l2;->k:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/tencent/mna/l2;->m:I

    .line 18
    iput-boolean v0, p0, Lcom/tencent/mna/l2;->p:Z

    const/4 v1, -0x5

    .line 19
    iput v1, p0, Lcom/tencent/mna/l2;->q:I

    .line 25
    iput-object p1, p0, Lcom/tencent/mna/l2;->d:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/tencent/mna/l2;->e:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/tencent/mna/l2;->g:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/tencent/mna/l2;->h:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/tencent/mna/l2;->i:Ljava/lang/String;

    .line 30
    iput-wide p6, p0, Lcom/tencent/mna/l2;->j:J

    .line 31
    iput-object p8, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    .line 32
    iput p9, p0, Lcom/tencent/mna/l2;->m:I

    .line 33
    invoke-static {p2}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/mna/l2;->f:J

    .line 34
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/mna/l2;->n:Ljava/util/Map;

    .line 35
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/tencent/mna/l2;->o:Ljava/util/List;

    .line 36
    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/l2;->c:Lcom/tencent/mna/c2$b;

    .line 37
    iput-boolean v0, p0, Lcom/tencent/mna/l2;->p:Z

    .line 39
    iput v1, p0, Lcom/tencent/mna/l2;->q:I

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/tencent/mna/y2;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/tencent/mna/l2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxnum"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 124
    iget-object v0, p0, Lcom/tencent/mna/l2;->d:Ljava/lang/String;

    const-string v1, "pvpid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 125
    iget-object v0, p0, Lcom/tencent/mna/l2;->e:Ljava/lang/String;

    const-string v1, "devid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 126
    iget-wide v0, p0, Lcom/tencent/mna/l2;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "devkey"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 127
    iget-object v0, p0, Lcom/tencent/mna/l2;->g:Ljava/lang/String;

    const-string v1, "mnaver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 128
    iget-object v0, p0, Lcom/tencent/mna/l2;->h:Ljava/lang/String;

    const-string v1, "gamever"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 129
    iget-object v0, p0, Lcom/tencent/mna/l2;->i:Ljava/lang/String;

    const-string v1, "openid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 130
    iget-wide v0, p0, Lcom/tencent/mna/l2;->j:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "origtime"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 131
    iget-object v0, p0, Lcom/tencent/mna/l2;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "borntime"

    invoke-interface {p1, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tencent/mna/l2;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 2
    iget-object p4, p0, Lcom/tencent/mna/l2;->n:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_3

    if-nez p5, :cond_1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    .line 7
    invoke-static {p2}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/mna/i2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p1, p5, :cond_2

    .line 15
    iget-object p1, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/mna/i2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/tencent/mna/l2;->n:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "PreciseKartinQuery:::getLinkIp key:"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", ip:["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "], traceTarget:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    move-object p4, p2

    goto :goto_1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PreciseKartinQuery:::getLinkIp from cache key:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ip:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    :goto_1
    return-object p4
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 134
    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v0

    if-gtz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreciseKartinQuery:::["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] doReport failed, for switch close:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/tencent/mna/l2;->p:Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreciseKartinQuery:::doReport num:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mna/l2;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mna/l2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mna/y2;

    .line 141
    invoke-direct {p0, v1}, Lcom/tencent/mna/l2;->a(Lcom/tencent/mna/y2;)V

    .line 142
    invoke-interface {v1}, Lcom/tencent/mna/y2;->c()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/tencent/mna/l2;->p:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/tencent/mna/l2;->q:I

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreciseKartinQuery:::setHuaweiRouterMarker:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(JJLjava/lang/String;J)V
    .locals 21

    move-object/from16 v6, p0

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-wide/from16 v7, p6

    .line 23
    iget v5, v6, Lcom/tencent/mna/l2;->a:I

    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v9

    const-string v10, ", input:"

    const-string v11, "PreciseKartinQuery:::["

    const-string v12, "_"

    if-lt v5, v9, :cond_0

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v6, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] query failed, exceed max num:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_0
    iget-wide v13, v6, Lcom/tencent/mna/l2;->b:J

    const-wide/16 v15, -0x1

    const-string v5, "PreciseKartinQuery:::query failed, curTime:"

    cmp-long v9, v13, v15

    if-eqz v9, :cond_2

    sub-long v13, v7, v13

    invoke-static {}, Lcom/tencent/mna/d;->x0()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v2, v9

    cmp-long v9, v13, v2

    if-gez v9, :cond_1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastDiagTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v6, Lcom/tencent/mna/l2;->b:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", within min seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->x0()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    move-wide/from16 v13, p3

    goto :goto_0

    :cond_2
    move-wide v13, v2

    .line 34
    :goto_0
    iget-boolean v2, v6, Lcom/tencent/mna/l2;->p:Z

    if-eqz v2, :cond_3

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", for isReporting, input:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_3
    invoke-static {}, Lcom/tencent/mna/d;->S()I

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    iget v3, v6, Lcom/tencent/mna/l2;->q:I

    const-string v5, "gather_logs"

    invoke-static {v2, v3, v5}, Lcom/tencent/mna/w0;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    const v2, -0xbdb29

    .line 47
    :goto_1
    invoke-static {}, Lcom/tencent/mna/d;->y1()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 48
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/y3;->d(Ljava/lang/String;)V

    .line 51
    :cond_5
    iput-wide v7, v6, Lcom/tencent/mna/l2;->b:J

    .line 52
    iget v3, v6, Lcom/tencent/mna/l2;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/tencent/mna/l2;->a:I

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v6, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] query call, curTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 56
    sget-object v3, Lcom/tencent/mna/base/report/d;->PRECISE_KARTIN:Lcom/tencent/mna/base/report/d;

    invoke-static {v3}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v9

    sub-long v3, v0, v7

    long-to-int v4, v3

    .line 58
    iget-object v3, v6, Lcom/tencent/mna/l2;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sub-long v15, v7, v13

    .line 60
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/tencent/mna/l2;->k:Ljava/lang/String;

    .line 62
    :cond_6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v10

    .line 63
    invoke-static {v10}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v12

    .line 64
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "net"

    invoke-interface {v9, v5, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 65
    invoke-static {v10, v12}, Lcom/tencent/mna/base/utils/c;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "signal"

    invoke-interface {v9, v5, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 66
    invoke-static {v10, v12}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "dbm"

    invoke-interface {v9, v5, v3}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hwr_logs"

    invoke-interface {v9, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 69
    invoke-static {}, Lcom/tencent/mna/d;->z0()I

    move-result v5

    .line 70
    iget-object v2, v6, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v6, Lcom/tencent/mna/l2;->l:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Lcom/tencent/mna/l2;->m:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server_ip"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 74
    invoke-static {}, Lcom/tencent/mna/d;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/n1;->j(Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/tencent/mna/d;->z()I

    move-result v16

    iget-wide v1, v6, Lcom/tencent/mna/l2;->f:J

    long-to-int v2, v1

    .line 76
    invoke-static {}, Lcom/tencent/mna/d;->v0()I

    move-result v18

    invoke-static {}, Lcom/tencent/mna/d;->y0()I

    move-result v19

    move-object v1, v15

    move v15, v0

    move/from16 v17, v2

    move/from16 v20, v4

    .line 77
    invoke-static/range {v15 .. v20}, Lcom/tencent/mna/base/jni/e;->a(IIIIII)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v2, "detail"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v3, v2, v7

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], getDelayDetail elapse:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 84
    iget v0, v6, Lcom/tencent/mna/l2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "curnum"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 85
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "diagtime"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 86
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "curServTime"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 87
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pvpDurationTime"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 88
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "triggerDelay"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 90
    invoke-static {v10}, Lcom/tencent/mna/base/utils/WifiUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 91
    invoke-static {v10}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 92
    const-string/jumbo v0, "wmac"

    invoke-interface {v9, v0, v13}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 93
    const-string v0, "pcell"

    invoke-interface {v9, v0, v14}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 95
    iget-object v0, v6, Lcom/tencent/mna/l2;->c:Lcom/tencent/mna/c2$b;

    invoke-static {}, Lcom/tencent/mna/c2;->a()Lcom/tencent/mna/c2$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mna/c2;->a(Lcom/tencent/mna/c2$b;Lcom/tencent/mna/c2$b;)Lcom/tencent/mna/c2$b;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/c2;->a(Lcom/tencent/mna/c2$b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "nic"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diagnoseSpeed"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 98
    invoke-static {}, Lcom/tencent/mna/d;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ex_client_ip"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 100
    invoke-static {v10}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 101
    const-string v0, "router_ip"

    invoke-interface {v9, v0, v15}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v15

    move-wide/from16 v17, v3

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v19, v10

    move v10, v5

    move/from16 v5, v16

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0, v10}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v1

    .line 104
    const-string v2, "in_ip"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v15

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0, v10}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v1

    .line 108
    const-string v2, "out_1_ip"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "out_1"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    const/4 v5, -0x2

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v15

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0, v10}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v1

    .line 112
    const-string v2, "out_2_ip"

    invoke-interface {v9, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "out_2"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    sub-long v0, v0, v17

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v6, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], pcell:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ping elapse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 118
    invoke-static/range {v19 .. v19}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end_net"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 119
    invoke-static/range {v19 .. v19}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1"

    goto :goto_2

    :cond_7
    const-string v0, "0"

    :goto_2
    const-string v1, "lbs"

    invoke-interface {v9, v1, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 120
    invoke-interface {v9}, Lcom/tencent/mna/y2;->b()V

    .line 121
    iget-object v0, v6, Lcom/tencent/mna/l2;->o:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PreciseKartinQuery:::["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mna/l2;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] initLinkIp failed, for switch close:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->w0()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v9

    .line 8
    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-static {v2}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-static {v2}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v2

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-static {p1}, Lcom/tencent/mna/n1;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    move-object v3, p0

    move v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v2

    .line 14
    invoke-direct/range {v3 .. v8}, Lcom/tencent/mna/l2;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/tencent/mna/l2;->n:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    move-object v3, p0

    move v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v2

    .line 18
    invoke-direct/range {v3 .. v8}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v8, -0x2

    move-object v3, p0

    move v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v2

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/tencent/mna/l2;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreciseKartinQuery:::initLinkIp inIp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outFirstIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", outLast2Ip:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", elapse:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mna/v1;->e(Ljava/lang/String;)V

    return-void
.end method
