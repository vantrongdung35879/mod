.class public Lcom/tencent/mna/base/report/a;
.super Lcom/tencent/mna/base/report/g;
.source "AccNormalReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/report/a$a;
    }
.end annotation


# instance fields
.field private e:Lcom/tencent/mna/d2;

.field private f:Lcom/tencent/mna/z;

.field private g:Lcom/tencent/mna/s0;

.field private h:Lcom/tencent/mna/a0;

.field private i:Lcom/tencent/mna/a0;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/base/report/d;Lcom/tencent/mna/base/report/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/base/report/g;-><init>(Lcom/tencent/mna/base/report/d;Lcom/tencent/mna/base/report/c;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->j:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->k:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->l:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->m:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->n:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/tencent/mna/base/report/a;->o:J

    .line 8
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->p:Ljava/lang/String;

    .line 152
    new-instance p1, Lcom/tencent/mna/a0;

    const/16 p2, 0x1f4

    invoke-direct {p1, p2}, Lcom/tencent/mna/a0;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->h:Lcom/tencent/mna/a0;

    .line 153
    new-instance p1, Lcom/tencent/mna/a0;

    invoke-direct {p1, p2}, Lcom/tencent/mna/a0;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->i:Lcom/tencent/mna/a0;

    .line 155
    new-instance p1, Lcom/tencent/mna/d2;

    invoke-static {}, Lcom/tencent/mna/d;->e0()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/tencent/mna/d2;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->e:Lcom/tencent/mna/d2;

    .line 157
    new-instance p1, Lcom/tencent/mna/z;

    invoke-static {}, Lcom/tencent/mna/d;->e0()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/tencent/mna/z;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    .line 159
    new-instance p1, Lcom/tencent/mna/s0;

    invoke-direct {p1}, Lcom/tencent/mna/s0;-><init>()V

    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    return-void
.end method

.method private a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mna/base/report/a$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 41
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    .line 45
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_1

    .line 47
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$100(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$100(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x3b

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, p0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$000(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ge p3, v1, :cond_3

    .line 59
    invoke-interface {p2, p3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 61
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_4
    :goto_1
    return-object p2
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(J)V
    .locals 3

    .line 27
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->PVPID:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 28
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->DEVID:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 29
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->DEVKEY:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 30
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->MNAVER:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 31
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->GAMEVER:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 32
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->OPENID:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 33
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->HARDWARE_OS:Lcom/tencent/mna/base/report/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/report/a;->p:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 34
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ORIGTIME:Lcom/tencent/mna/base/report/a$a;

    iget-wide v1, p0, Lcom/tencent/mna/base/report/a;->o:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 35
    sget-object v0, Lcom/tencent/mna/base/report/a$a;->ENDTIME:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    invoke-virtual {v0}, Lcom/tencent/mna/z;->a()V

    .line 2
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    invoke-virtual {v0}, Lcom/tencent/mna/s0;->a()V

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->e:Lcom/tencent/mna/d2;

    invoke-virtual {v0}, Lcom/tencent/mna/d2;->a()V

    .line 4
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->h:Lcom/tencent/mna/a0;

    invoke-virtual {v0}, Lcom/tencent/mna/a0;->a()V

    .line 5
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->i:Lcom/tencent/mna/a0;

    invoke-virtual {v0}, Lcom/tencent/mna/a0;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 15
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$000(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 17
    const-string p2, ""

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$100(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$200(Lcom/tencent/mna/base/report/a$a;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$300(Lcom/tencent/mna/base/report/a$a;)I

    move-result v0

    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$200(Lcom/tencent/mna/base/report/a$a;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$000(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$100(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/tencent/mna/base/report/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 23
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$308(Lcom/tencent/mna/base/report/a$a;)I

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {p1}, Lcom/tencent/mna/base/report/a$a;->access$000(Lcom/tencent/mna/base/report/a$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/report/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    :cond_3
    :goto_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/tencent/mna/base/report/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/tencent/mna/base/report/a;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/tencent/mna/base/report/a;->j:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/tencent/mna/base/report/a;->k:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/tencent/mna/base/report/a;->l:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/tencent/mna/base/report/a;->m:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/tencent/mna/base/report/a;->n:Ljava/lang/String;

    .line 12
    iput-wide p6, p0, Lcom/tencent/mna/base/report/a;->o:J

    .line 13
    iput-object p8, p0, Lcom/tencent/mna/base/report/a;->p:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public f()V
    .locals 29

    move-object/from16 v0, p0

    const-string v1, ", res: "

    const-string v2, "[N]ACC_REPORT first, endTime: "

    .line 1
    :try_start_0
    iget-object v3, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mna/m0;->a(Z)V

    .line 6
    iget-object v3, v0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    invoke-virtual {v3}, Lcom/tencent/mna/z;->b()Ljava/util/List;

    move-result-object v3

    .line 7
    iget-object v5, v0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    invoke-virtual {v5}, Lcom/tencent/mna/z;->d()Ljava/util/List;

    move-result-object v5

    .line 8
    iget-object v6, v0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    invoke-virtual {v6}, Lcom/tencent/mna/z;->c()Ljava/util/List;

    move-result-object v6

    .line 10
    iget-object v7, v0, Lcom/tencent/mna/base/report/a;->e:Lcom/tencent/mna/d2;

    invoke-virtual {v7, v4}, Lcom/tencent/mna/m0;->a(Z)V

    .line 11
    iget-object v7, v0, Lcom/tencent/mna/base/report/a;->e:Lcom/tencent/mna/d2;

    invoke-virtual {v7}, Lcom/tencent/mna/d2;->b()Ljava/util/List;

    move-result-object v7

    .line 13
    iget-object v8, v0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    invoke-virtual {v8, v4}, Lcom/tencent/mna/m0;->a(Z)V

    .line 14
    iget-object v8, v0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    invoke-virtual {v8}, Lcom/tencent/mna/s0;->c()Ljava/util/List;

    move-result-object v8

    .line 15
    iget-object v9, v0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    invoke-virtual {v9}, Lcom/tencent/mna/s0;->d()Ljava/util/List;

    move-result-object v9

    .line 16
    iget-object v10, v0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    invoke-virtual {v10}, Lcom/tencent/mna/s0;->b()Ljava/util/List;

    move-result-object v10

    .line 18
    invoke-static {}, Lcom/tencent/mna/d;->N0()I

    move-result v11

    .line 19
    invoke-static {}, Lcom/tencent/mna/d;->H0()I

    move-result v12

    if-lez v11, :cond_1

    .line 23
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v4

    div-int/2addr v14, v11

    add-int/2addr v14, v4

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    .line 25
    :goto_0
    sget-object v4, Lcom/tencent/mna/base/report/a$a;->NOR_CNT:Lcom/tencent/mna/base/report/a$a;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    move v15, v14

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 29
    invoke-direct {v0, v13, v14}, Lcom/tencent/mna/base/report/a;->a(J)V

    .line 31
    iget-object v4, v0, Lcom/tencent/mna/base/report/g;->d:Lcom/tencent/mna/base/report/c;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/tencent/mna/base/report/g;->c:Lcom/tencent/mna/base/report/d;

    .line 32
    invoke-virtual {v3}, Lcom/tencent/mna/base/report/d;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    move-object/from16 v19, v6

    iget-object v6, v0, Lcom/tencent/mna/base/report/g;->c:Lcom/tencent/mna/base/report/d;

    .line 33
    invoke-virtual {v6}, Lcom/tencent/mna/base/report/d;->isRealTime()Z

    move-result v6

    .line 34
    invoke-interface {v4, v3, v5, v6}, Lcom/tencent/mna/base/report/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v3

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/base/report/g;->e()V

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/tencent/mna/d;->p0()I

    move-result v2

    if-lez v2, :cond_2

    .line 40
    iget-object v2, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/tencent/mna/base/report/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v20

    sget-object v21, Lcom/tencent/mna/w;->e:Ljava/lang/String;

    sget-object v22, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    iget-wide v3, v0, Lcom/tencent/mna/base/report/a;->o:J

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    .line 43
    invoke-static {}, Lcom/tencent/mna/d;->p0()I

    move-result v26

    iget-object v2, v0, Lcom/tencent/mna/base/report/a;->n:Ljava/lang/String;

    move-wide/from16 v23, v3

    move-object/from16 v27, v2

    .line 44
    invoke-static/range {v20 .. v27}, Lcom/tencent/mna/p0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 50
    :cond_2
    iget-wide v2, v0, Lcom/tencent/mna/base/report/a;->o:J

    move v14, v15

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_5

    .line 53
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v15, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    .line 55
    sget-object v15, Lcom/tencent/mna/base/report/a$a;->NOR_I:Lcom/tencent/mna/base/report/a$a;

    add-int/lit8 v16, v13, 0x1

    move/from16 v17, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v15, v14}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 56
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->CPU:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v4, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 57
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->MEMORY:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v5, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 58
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->GPU:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v6, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    .line 60
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->FPS:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v8, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    .line 61
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->MOVE:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v9, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 62
    sget-object v14, Lcom/tencent/mna/base/report/a$a;->CLICK:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v14, v10, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v10

    .line 64
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .line 65
    sget-object v15, Lcom/tencent/mna/base/report/a$a;->NORMALVALUE:Lcom/tencent/mna/base/report/a$a;

    invoke-direct {v0, v15, v7, v11}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 66
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    move-object/from16 v18, v4

    .line 67
    iget-object v4, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    sub-int/2addr v14, v15

    mul-int v4, v14, v12

    move-object v15, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 73
    invoke-direct {v0, v2, v3}, Lcom/tencent/mna/base/report/a;->a(J)V

    .line 75
    iget-object v4, v0, Lcom/tencent/mna/base/report/g;->d:Lcom/tencent/mna/base/report/c;

    iget-object v5, v0, Lcom/tencent/mna/base/report/g;->c:Lcom/tencent/mna/base/report/d;

    .line 76
    invoke-virtual {v5}, Lcom/tencent/mna/base/report/d;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v6

    iget-object v6, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/tencent/mna/base/report/g;->c:Lcom/tencent/mna/base/report/d;

    .line 77
    invoke-virtual {v7}, Lcom/tencent/mna/base/report/d;->isRealTime()Z

    move-result v7

    .line 78
    invoke-interface {v4, v5, v6, v7}, Lcom/tencent/mna/base/report/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Z

    move-result v4

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/base/report/g;->e()V

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[N]ACC_REPORT second("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", samples: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/tencent/mna/d;->p0()I

    move-result v4

    if-lez v4, :cond_4

    .line 85
    iget-object v4, v0, Lcom/tencent/mna/base/report/g;->b:Ljava/util/Map;

    invoke-direct {v0, v4}, Lcom/tencent/mna/base/report/a;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v21

    sget-object v22, Lcom/tencent/mna/w;->e:Ljava/lang/String;

    sget-object v23, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    iget-wide v5, v0, Lcom/tencent/mna/base/report/a;->o:J

    .line 88
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    .line 89
    invoke-static {}, Lcom/tencent/mna/d;->p0()I

    move-result v27

    iget-object v4, v0, Lcom/tencent/mna/base/report/a;->n:Ljava/lang/String;

    move-wide/from16 v24, v5

    move-object/from16 v28, v4

    .line 90
    invoke-static/range {v21 .. v28}, Lcom/tencent/mna/p0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    :cond_4
    move-object v5, v15

    move/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto/16 :goto_1

    .line 96
    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mna/base/report/a;->h()V

    goto :goto_4

    .line 97
    :cond_6
    :goto_3
    const-string v1, "[N]ACC_REPORT failed, for map is null"

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 184
    :catch_0
    const-string v1, "ino_newacc_p report exception!"

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public i()Lcom/tencent/mna/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->f:Lcom/tencent/mna/z;

    return-object v0
.end method

.method public j()Lcom/tencent/mna/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->i:Lcom/tencent/mna/a0;

    return-object v0
.end method

.method public k()Lcom/tencent/mna/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->h:Lcom/tencent/mna/a0;

    return-object v0
.end method

.method public l()Lcom/tencent/mna/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->g:Lcom/tencent/mna/s0;

    return-object v0
.end method

.method public m()Lcom/tencent/mna/d2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/a;->e:Lcom/tencent/mna/d2;

    return-object v0
.end method
