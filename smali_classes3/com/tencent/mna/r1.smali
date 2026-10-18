.class public Lcom/tencent/mna/r1;
.super Ljava/lang/Object;
.source "LRSpeedComparator.java"

# interfaces
.implements Lcom/tencent/mna/h1;


# instance fields
.field private a:Lcom/tencent/mna/j;

.field private b:Lcom/tencent/mna/base/report/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mna/j;Lcom/tencent/mna/base/report/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/mna/r1;->a:Lcom/tencent/mna/j;

    .line 3
    iput-object p2, p0, Lcom/tencent/mna/r1;->b:Lcom/tencent/mna/base/report/a;

    .line 4
    iput-object p3, p0, Lcom/tencent/mna/r1;->f:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tencent/mna/r1;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/tencent/mna/r1;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/tencent/mna/r1;->d:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/tencent/mna/r1;->g:Z

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/r1;->b:Lcom/tencent/mna/base/report/a;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/tencent/mna/base/report/a$a;->PRE_XMLVER:Lcom/tencent/mna/base/report/a$a;

    iget-object v2, p0, Lcom/tencent/mna/r1;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 3
    iget-object v0, p0, Lcom/tencent/mna/r1;->b:Lcom/tencent/mna/base/report/a;

    sget-object v1, Lcom/tencent/mna/base/report/a$a;->PRE_ERRNO:Lcom/tencent/mna/base/report/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 4
    iget-object p1, p0, Lcom/tencent/mna/r1;->b:Lcom/tencent/mna/base/report/a;

    sget-object v0, Lcom/tencent/mna/base/report/a$a;->PRE_ERRMSG:Lcom/tencent/mna/base/report/a$a;

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    .line 5
    iget-object p1, p0, Lcom/tencent/mna/r1;->b:Lcom/tencent/mna/base/report/a;

    sget-object p2, Lcom/tencent/mna/base/report/a$a;->PRE_PROB:Lcom/tencent/mna/base/report/a$a;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/tencent/mna/k3$a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/tencent/mna/base/report/a;->a(Lcom/tencent/mna/base/report/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/report/a;

    :cond_1
    return-void
.end method

.method private b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/mna/base/report/d;->PREDICT:Lcom/tencent/mna/base/report/d;

    invoke-static {v0}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "errno"

    invoke-interface {v0, v1, p1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    .line 3
    const-string v1, "errmsg"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/mna/r1;->f:Ljava/lang/String;

    .line 4
    const-string/jumbo v1, "xmlver"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 5
    const-string v1, "openid"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    sget-object p2, Lcom/tencent/mna/t0;->c:Ljava/lang/String;

    .line 6
    const-string v1, "pvpid"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/tencent/mna/t0;->f:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    const-string v1, "origtime"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    if-eqz p3, :cond_0

    .line 9
    iget-object p1, p3, Lcom/tencent/mna/k3$a;->b:Ljava/lang/String;

    const-string p2, "params"

    invoke-interface {v0, p2, p1}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    iget-object p2, p3, Lcom/tencent/mna/k3$a;->c:Ljava/lang/String;

    .line 10
    const-string v1, "iadirect"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    iget-object p2, p3, Lcom/tencent/mna/k3$a;->d:Ljava/lang/String;

    .line 11
    const-string v1, "iaforward"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    iget-object p2, p3, Lcom/tencent/mna/k3$a;->e:Ljava/lang/String;

    .line 12
    const-string v1, "sProbMin"

    invoke-interface {p1, v1, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    move-result-object p1

    iget-object p2, p3, Lcom/tencent/mna/k3$a;->f:Ljava/lang/String;

    .line 13
    const-string p3, "prob"

    invoke-interface {p1, p3, p2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/tencent/mna/y2;->c()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I
    .locals 31

    move-object/from16 v1, p0

    const-string v0, "predict "

    const-string v2, "level "

    const-string v3, "Android "

    const-string/jumbo v4, "updateConfig "

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    const-string v6, ""

    .line 6
    :try_start_0
    iget-object v8, v1, Lcom/tencent/mna/r1;->f:Ljava/lang/String;

    sget-object v9, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 7
    invoke-static {v9, v8}, Lcom/tencent/mna/c4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {v8, v9}, Lcom/tencent/mna/c4;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v8, :cond_9

    .line 11
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v4

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 15
    invoke-static {}, Lcom/tencent/mna/base/utils/e;->g()Ljava/lang/String;

    move-result-object v24

    .line 16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/base/utils/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mna/base/utils/e;->c()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v10

    const/4 v11, 0x2

    const/4 v15, 0x1

    if-ne v10, v15, :cond_1

    .line 24
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-static {v10, v15}, Lcom/tencent/mna/i2;->b(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/tencent/mna/d;->u1()I

    move-result v10

    if-ne v10, v11, :cond_3

    .line 28
    invoke-static {}, Lcom/tencent/mna/t0;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/tencent/mna/i2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 29
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_4

    .line 31
    :cond_2
    invoke-static {}, Lcom/tencent/mna/d;->c0()Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-static {}, Lcom/tencent/mna/d;->c1()Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-static {v10, v12, v15}, Lcom/tencent/mna/i2;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mna/i2$a;

    move-result-object v10

    .line 36
    iget v10, v10, Lcom/tencent/mna/i2$a;->b:I

    goto :goto_0

    .line 40
    :cond_3
    iget-object v10, v1, Lcom/tencent/mna/r1;->a:Lcom/tencent/mna/j;

    if-eqz v10, :cond_4

    .line 41
    invoke-virtual {v10}, Lcom/tencent/mna/j;->c()Ljava/lang/String;

    .line 42
    iget-object v10, v1, Lcom/tencent/mna/r1;->a:Lcom/tencent/mna/j;

    invoke-virtual {v10}, Lcom/tencent/mna/j;->b()I

    move-result v10

    :goto_0
    move v14, v10

    goto :goto_1

    :cond_4
    const/16 v10, 0xc8

    const/16 v14, 0xc8

    .line 47
    :goto_1
    iget-boolean v10, v1, Lcom/tencent/mna/r1;->g:Z

    if-eqz v10, :cond_5

    .line 49
    invoke-static {v4}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 51
    invoke-static {v4}, Lcom/tencent/mna/base/utils/WifiUtil;->g(Landroid/content/Context;)I

    move-result v10

    int-to-float v10, v10

    .line 52
    invoke-static {v4}, Lcom/tencent/mna/base/utils/WifiUtil;->j(Landroid/content/Context;)I

    move-result v17

    .line 53
    invoke-static {v4}, Lcom/tencent/mna/base/utils/WifiUtil;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 54
    aget-object v13, v12, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 55
    aget-object v13, v12, v15

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 56
    aget-object v11, v12, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v11, 0x3

    .line 57
    aget-object v11, v12, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 60
    invoke-static {v4, v15}, Lcom/tencent/mna/base/utils/WifiUtil;->b(Landroid/content/Context;I)I

    move-result v4

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mna/a0;->b()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/a0;->b()Ljava/util/Vector;

    move-result-object v16

    iget-object v12, v1, Lcom/tencent/mna/r1;->c:Ljava/lang/String;

    iget-object v13, v1, Lcom/tencent/mna/r1;->e:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/mna/r1;->d:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v28, v13

    move/from16 v13, v22

    const/16 v22, 0x4

    move-object/from16 v27, v12

    move/from16 v12, v22

    const/16 v22, 0x0

    move/from16 v25, v10

    move-object v10, v11

    move-object/from16 v11, v16

    const/16 v30, 0x1

    move v15, v4

    move/from16 v16, v25

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    move-object/from16 v29, v7

    .line 64
    invoke-static/range {v8 .. v29}, Lcom/tencent/mna/k3;->a(JLjava/util/Vector;Ljava/util/Vector;IIIIFIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/k3$a;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/16 v30, 0x1

    .line 73
    invoke-static {v4}, Lcom/tencent/mna/base/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 74
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->d()I

    move-result v16

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mna/a0;->b()Ljava/util/Vector;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/a0;->b()Ljava/util/Vector;

    move-result-object v11

    iget-object v4, v1, Lcom/tencent/mna/r1;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/tencent/mna/r1;->e:Ljava/lang/String;

    iget-object v15, v1, Lcom/tencent/mna/r1;->d:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/16 v18, 0x0

    move-object/from16 v23, v15

    move/from16 v15, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .line 79
    invoke-static/range {v8 .. v23}, Lcom/tencent/mna/k3;->a(JLjava/util/Vector;Ljava/util/Vector;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/k3$a;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    move-object v7, v2

    .line 87
    :try_start_2
    iget-wide v2, v7, Lcom/tencent/mna/k3$a;->a:D

    const-wide/16 v8, 0x0

    cmpg-double v4, v2, v8

    if-ltz v4, :cond_8

    const-wide v8, 0x3ff000010c6f7a0bL    # 1.000001

    cmpl-double v4, v2, v8

    if-lez v4, :cond_6

    goto :goto_3

    .line 91
    :cond_6
    invoke-static {}, Lcom/tencent/mna/d;->A0()D

    move-result-wide v8

    cmpl-double v0, v2, v8

    if-lez v0, :cond_7

    .line 92
    const-string v0, "LRSpeedComparator return 1, forward is better"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 110
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    return v30

    .line 111
    :cond_7
    :try_start_3
    const-string v0, "LRSpeedComparator return -1, direct is better"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 126
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    const/4 v0, -0x1

    return v0

    :cond_8
    :goto_3
    const/4 v4, -0x3

    .line 127
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 147
    invoke-direct {v1, v4, v0, v7}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v5, -0x3

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/4 v2, -0x2

    .line 148
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string v0, "LRSpeedComparator return 0, direct is better"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v3, 0x0

    .line 157
    invoke-direct {v1, v2, v6, v3}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 158
    invoke-direct {v1, v2, v6, v3}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    return v5

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    move-object v7, v3

    const/4 v5, -0x2

    goto :goto_6

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    move-object v7, v3

    :goto_4
    const/4 v2, -0x4

    .line 159
    :try_start_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 161
    invoke-direct {v1, v2, v0, v7}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 162
    invoke-direct {v1, v2, v0, v7}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 164
    :goto_5
    const-string v0, "LRSpeedComparator return 0"

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v5

    :catchall_5
    move-exception v0

    const/4 v5, -0x4

    .line 165
    :goto_6
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->b(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 166
    invoke-direct {v1, v5, v6, v7}, Lcom/tencent/mna/r1;->a(ILjava/lang/String;Lcom/tencent/mna/k3$a;)V

    .line 167
    throw v0

    .line 168
    :cond_a
    :goto_7
    const-string v0, "compare input is null"

    invoke-static {v0}, Lcom/tencent/mna/v1;->b(Ljava/lang/String;)V

    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/mna/a0;

    check-cast p2, Lcom/tencent/mna/a0;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/r1;->compare(Lcom/tencent/mna/a0;Lcom/tencent/mna/a0;)I

    move-result p1

    return p1
.end method
