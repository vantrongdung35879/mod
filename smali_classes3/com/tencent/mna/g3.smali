.class public Lcom/tencent/mna/g3;
.super Ljava/lang/Object;
.source "ScheduledWorkerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/tencent/mna/j;

.field private b:Lcom/tencent/mna/base/report/a;

.field private c:Lcom/tencent/mna/g1;

.field private d:Lcom/tencent/mna/d2;

.field private e:Lcom/tencent/mna/z;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/g3;->f:I

    const/16 v0, -0x2710

    .line 4
    iput v0, p0, Lcom/tencent/mna/g3;->g:I

    .line 5
    iput v0, p0, Lcom/tencent/mna/g3;->h:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/tencent/mna/g3;->i:I

    .line 14
    iput-object p1, p0, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    .line 15
    iput-object p2, p0, Lcom/tencent/mna/g3;->b:Lcom/tencent/mna/base/report/a;

    .line 16
    new-instance p1, Lcom/tencent/mna/f2;

    invoke-static {}, Lcom/tencent/mna/d;->t()I

    move-result p2

    invoke-static {}, Lcom/tencent/mna/d;->u0()I

    move-result v0

    .line 17
    invoke-static {}, Lcom/tencent/mna/d;->U()I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/mna/f2;-><init>(III)V

    iput-object p1, p0, Lcom/tencent/mna/g3;->c:Lcom/tencent/mna/g1;

    .line 18
    iget-object p1, p0, Lcom/tencent/mna/g3;->b:Lcom/tencent/mna/base/report/a;

    invoke-virtual {p1}, Lcom/tencent/mna/base/report/a;->m()Lcom/tencent/mna/d2;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/g3;->d:Lcom/tencent/mna/d2;

    .line 19
    iget-object p1, p0, Lcom/tencent/mna/g3;->b:Lcom/tencent/mna/base/report/a;

    invoke-virtual {p1}, Lcom/tencent/mna/base/report/a;->i()Lcom/tencent/mna/z;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    return-void
.end method

.method private a(ZII)I
    .locals 10

    .line 7
    sget-object v0, Lcom/tencent/mna/j$c;->STAGE_DIRECT_CHOSEN:Lcom/tencent/mna/j$c;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 9
    sget-object v0, Lcom/tencent/mna/j$c;->STAGE_FORWARD_CHOSEN:Lcom/tencent/mna/j$c;

    move v5, p2

    move-object v4, v0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p2

    move-object v4, v0

    const/4 v5, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    iget-object v3, p0, Lcom/tencent/mna/g3;->b:Lcom/tencent/mna/base/report/a;

    iget v8, p0, Lcom/tencent/mna/g3;->g:I

    iget v9, p0, Lcom/tencent/mna/g3;->i:I

    move v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/mna/j;->a(Lcom/tencent/mna/base/report/a;Lcom/tencent/mna/j$c;IIIII)Lcom/tencent/mna/o1;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/tencent/mna/p2;->a(Lcom/tencent/mna/o1;)V

    if-eqz p1, :cond_1

    .line 19
    iget p1, p1, Lcom/tencent/mna/o1;->k:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private a()V
    .locals 15

    .line 20
    iget-object v0, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "recordCpuMemGpu: sCpuMemGpusInfo is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->s()I

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    invoke-virtual {v0}, Lcom/tencent/mna/z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->e()[J

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->d()[J

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    iget-wide v1, v0, Lcom/tencent/mna/z;->f:J

    iget-wide v3, v0, Lcom/tencent/mna/z;->g:J

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mna/base/utils/d;->b(JJ)[J

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    iget-wide v2, v1, Lcom/tencent/mna/z;->h:J

    iget-wide v4, v1, Lcom/tencent/mna/z;->i:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mna/base/utils/d;->a(JJ)[J

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    .line 39
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lt v2, v3, :cond_2

    .line 40
    iget-object v4, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    const/4 v2, 0x0

    aget-wide v5, v0, v2

    long-to-int v5, v5

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    const/4 v8, 0x2

    aget-wide v9, v0, v8

    aget-wide v11, v1, v2

    long-to-int v0, v11

    aget-wide v11, v1, v3

    aget-wide v13, v1, v8

    move-wide v8, v9

    move v10, v0

    invoke-virtual/range {v4 .. v14}, Lcom/tencent/mna/z;->a(IJJIJJ)V

    goto :goto_1

    .line 43
    :cond_2
    const-string v0, "recordCpuMemGpu: get cpu usage error"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    .line 47
    :cond_3
    :goto_1
    invoke-static {}, Lcom/tencent/mna/d;->f0()I

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/tencent/mna/base/utils/d;->c(Landroid/content/Context;)I

    move-result v1

    .line 50
    invoke-static {v0}, Lcom/tencent/mna/base/utils/d;->a(Landroid/content/Context;)I

    move-result v0

    .line 52
    iget-object v2, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mna/z;->a(II)V

    .line 55
    :cond_4
    invoke-static {}, Lcom/tencent/mna/d;->Q()I

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    invoke-static {}, Lcom/tencent/mna/base/utils/d;->b()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/tencent/mna/g3;->e:Lcom/tencent/mna/z;

    invoke-virtual {v1, v0}, Lcom/tencent/mna/z;->a(I)V

    :cond_5
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/mna/h;->p()Lcom/tencent/mna/f1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tencent/mna/d;->J1()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/tencent/mna/d;->w1()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/tencent/mna/g3;->f:I

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->E1()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "_-1_-1_"

    const-string v2, "[N]NETWORK_BINDING To 4G, res: "

    const-string v3, "[N]NETWORK_BINDING To Wifi, res: "

    const-string v4, "[N]FORWARD_DELAY: "

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const-string v8, "mna-scheduled-worker"

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tencent/mna/h;->w()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 6
    iget-object v7, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    if-nez v7, :cond_0

    .line 8
    const-string v0, "Scheduled Work failed, testerFacade is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    .line 12
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v7

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x1

    .line 14
    :goto_1
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v9, :cond_4

    .line 15
    invoke-static {}, Lcom/tencent/mna/d;->x()I

    move-result v11

    if-ne v11, v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v11, 0x1

    .line 19
    :goto_3
    invoke-static {}, Lcom/tencent/mna/h;->x()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    const-string v15, "[N]DIRECT_DELAY(match["

    if-eqz v13, :cond_a

    if-eqz v7, :cond_7

    .line 23
    :try_start_1
    sget-boolean v16, Lcom/tencent/mna/t0;->y:Z

    if-eqz v16, :cond_5

    .line 25
    iget-object v12, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    iget v8, v1, Lcom/tencent/mna/g3;->g:I

    invoke-virtual {v12, v8}, Lcom/tencent/mna/j;->b(I)I

    move-result v8

    goto :goto_4

    .line 27
    :cond_5
    iget-object v8, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v8}, Lcom/tencent/mna/j;->d()I

    move-result v8

    :goto_4
    if-gez v8, :cond_6

    rsub-int v8, v8, 0x3e8

    .line 33
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 35
    invoke-static {v4}, Lcom/tencent/mna/v1;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-eqz v11, :cond_9

    .line 40
    sget-boolean v4, Lcom/tencent/mna/t0;->y:Z

    if-nez v4, :cond_9

    .line 42
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v1, Lcom/tencent/mna/g3;->g:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/tencent/mna/g3;->h:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v14}, Lcom/tencent/mna/j;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    if-gez v4, :cond_8

    rsub-int v4, v4, 0x3e8

    .line 47
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/tencent/mna/t0;->y:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "], acc[true]): "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    invoke-static {v10}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 49
    invoke-static {v10}, Lcom/tencent/mna/v1;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 51
    :goto_6
    iput v4, v1, Lcom/tencent/mna/g3;->h:I

    .line 53
    iget-object v10, v1, Lcom/tencent/mna/g3;->d:Lcom/tencent/mna/d2;

    if-eqz v10, :cond_e

    .line 54
    invoke-virtual {v10, v8, v4}, Lcom/tencent/mna/d2;->a(II)V

    goto :goto_9

    :cond_a
    if-eqz v11, :cond_d

    .line 59
    sget-boolean v4, Lcom/tencent/mna/t0;->y:Z

    if-eqz v4, :cond_b

    .line 61
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    iget v8, v1, Lcom/tencent/mna/g3;->g:I

    invoke-virtual {v4, v8}, Lcom/tencent/mna/j;->a(I)I

    move-result v4

    goto :goto_7

    .line 64
    :cond_b
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    iget v8, v1, Lcom/tencent/mna/g3;->g:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v14}, Lcom/tencent/mna/j;->a(Ljava/lang/String;Ljava/util/Map;)I

    move-result v4

    :goto_7
    if-gez v4, :cond_c

    rsub-int v4, v4, 0x3e8

    .line 70
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v10, Lcom/tencent/mna/t0;->y:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "], acc[false]): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-static {v8}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 72
    invoke-static {v8}, Lcom/tencent/mna/v1;->d(Ljava/lang/String;)V

    move v8, v4

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    .line 74
    :goto_8
    iget-object v4, v1, Lcom/tencent/mna/g3;->d:Lcom/tencent/mna/d2;

    if-eqz v4, :cond_e

    .line 75
    invoke-virtual {v4, v8}, Lcom/tencent/mna/d2;->a(I)V

    .line 80
    :cond_e
    :goto_9
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v4

    .line 81
    invoke-static {v4}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v10

    .line 83
    iget v12, v1, Lcom/tencent/mna/g3;->g:I

    const/16 v14, -0x2710

    if-eq v12, v14, :cond_f

    iget-object v14, v1, Lcom/tencent/mna/g3;->c:Lcom/tencent/mna/g1;

    if-eqz v14, :cond_f

    .line 84
    invoke-interface {v14, v8, v12}, Lcom/tencent/mna/g1;->a(II)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 85
    invoke-direct {v1, v13, v8, v10}, Lcom/tencent/mna/g3;->a(ZII)I

    move-result v12

    if-gez v12, :cond_10

    rsub-int v12, v12, 0x3e8

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    .line 92
    :cond_10
    :goto_a
    iput v8, v1, Lcom/tencent/mna/g3;->g:I

    .line 93
    iput v10, v1, Lcom/tencent/mna/g3;->i:I

    .line 95
    invoke-direct {v1, v10}, Lcom/tencent/mna/g3;->a(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 97
    invoke-static {}, Lcom/tencent/mna/h;->q()I

    move-result v10

    if-ne v10, v9, :cond_11

    .line 105
    invoke-static {v4}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result v4

    .line 106
    invoke-static {}, Lcom/tencent/mna/d;->b0()I

    move-result v14

    .line 107
    invoke-static {}, Lcom/tencent/mna/d;->Y()I

    move-result v15

    .line 108
    invoke-static {}, Lcom/tencent/mna/d;->a0()I

    move-result v17

    :goto_b
    move/from16 v9, v17

    goto :goto_c

    .line 111
    :cond_11
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->d()I

    move-result v4

    .line 112
    invoke-static {}, Lcom/tencent/mna/d;->D1()I

    move-result v14

    .line 113
    invoke-static {}, Lcom/tencent/mna/d;->F1()I

    move-result v15

    .line 114
    invoke-static {}, Lcom/tencent/mna/d;->C1()I

    move-result v17

    goto :goto_b

    :goto_c
    if-le v8, v15, :cond_18

    if-le v4, v14, :cond_18

    if-gtz v12, :cond_14

    if-eqz v13, :cond_12

    if-eqz v7, :cond_13

    .line 119
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v4}, Lcom/tencent/mna/j;->d()I

    move-result v4

    goto :goto_d

    :cond_12
    if-eqz v11, :cond_13

    .line 121
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v4}, Lcom/tencent/mna/j;->a()I

    move-result v4

    goto :goto_d

    :cond_13
    const/4 v4, 0x0

    goto :goto_d

    :cond_14
    move v4, v12

    :goto_d
    if-le v4, v15, :cond_18

    if-eqz v13, :cond_15

    if-eqz v7, :cond_16

    .line 126
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v4}, Lcom/tencent/mna/j;->f()I

    move-result v4

    goto :goto_e

    :cond_15
    if-eqz v11, :cond_16

    .line 128
    iget-object v4, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v4}, Lcom/tencent/mna/j;->e()I

    move-result v4

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    :goto_e
    if-lez v4, :cond_18

    if-gt v4, v9, :cond_18

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v4, 0x1

    if-ne v10, v4, :cond_17

    const/4 v4, 0x0

    .line 135
    invoke-static {v4}, Lcom/tencent/mna/h;->g(Z)I

    move-result v2

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    goto :goto_f

    .line 138
    :cond_17
    iget v3, v1, Lcom/tencent/mna/g3;->f:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/tencent/mna/g3;->f:I

    .line 140
    invoke-static {v4}, Lcom/tencent/mna/h;->g(Z)I

    move-result v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    move v2, v3

    .line 143
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, v1, Lcom/tencent/mna/g3;->b:Lcom/tencent/mna/base/report/a;

    sget-object v2, Lcom/tencent/mna/base/report/a$a;->W2M_FLAG:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    :cond_18
    if-eqz v13, :cond_1c

    .line 157
    invoke-static {}, Lcom/tencent/mna/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-ltz v8, :cond_19

    .line 158
    invoke-static {}, Lcom/tencent/mna/d;->j()I

    move-result v0

    if-le v8, v0, :cond_1c

    :cond_19
    if-eqz v7, :cond_1c

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_1b

    .line 165
    iget-object v2, v1, Lcom/tencent/mna/g3;->a:Lcom/tencent/mna/j;

    invoke-virtual {v2}, Lcom/tencent/mna/j;->d()I

    move-result v2

    .line 166
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {}, Lcom/tencent/mna/d;->j()I

    move-result v3

    if-gt v2, v3, :cond_1a

    const/4 v2, 0x2

    goto :goto_11

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x2

    goto :goto_10

    :cond_1b
    :goto_11
    if-ne v4, v2, :cond_1c

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]Forwarding interruption, reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times forward delay is greater than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/d;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\uff0ci.e.("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Lcom/tencent/mna/h;->f(Z)V

    .line 180
    new-instance v0, Lcom/tencent/mna/StartSpeedRet;

    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-static {}, Lcom/tencent/mna/t0;->f()I

    move-result v9

    sget v10, Lcom/tencent/mna/g;->b:I

    const/4 v2, 0x3

    .line 184
    invoke-static {v2}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 185
    invoke-static {v0}, Lcom/tencent/mna/h;->a(Lcom/tencent/mna/StartSpeedRet;)V

    .line 194
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mna/g3;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_12

    :catchall_0
    move-exception v0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScheduledWorker run throwable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 199
    :cond_1d
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scheduled Work elapse:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void
.end method
