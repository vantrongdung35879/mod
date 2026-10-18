.class public Lcom/tencent/mna/j1;
.super Ljava/lang/Object;
.source "InoAccelerator.java"

# interfaces
.implements Lcom/tencent/mna/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/j1$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/tencent/mna/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/tencent/mna/j1;->b:I

    .line 5
    iput-object v0, p0, Lcom/tencent/mna/j1;->c:Ljava/lang/String;

    .line 6
    iput v1, p0, Lcom/tencent/mna/j1;->d:I

    .line 7
    iput-object v0, p0, Lcom/tencent/mna/j1;->e:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tencent/mna/j1;->f:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/tencent/mna/j1;->g:I

    .line 11
    new-instance v0, Lcom/tencent/mna/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/mna/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/j1;->h:Lcom/tencent/mna/f;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/j1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/mna/j1;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I
    .locals 11

    move-object v0, p0

    move v1, p2

    move/from16 v2, p7

    move-object v3, p1

    .line 24
    iput-object v3, v0, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    .line 25
    iput v1, v0, Lcom/tencent/mna/j1;->b:I

    move-object v4, p3

    .line 26
    iput-object v4, v0, Lcom/tencent/mna/j1;->c:Ljava/lang/String;

    move v4, p4

    .line 27
    iput v4, v0, Lcom/tencent/mna/j1;->d:I

    move-object/from16 v4, p5

    .line 28
    iput-object v4, v0, Lcom/tencent/mna/j1;->e:Ljava/lang/String;

    move-object/from16 v4, p6

    .line 29
    iput-object v4, v0, Lcom/tencent/mna/j1;->f:Ljava/lang/String;

    .line 30
    iput v2, v0, Lcom/tencent/mna/j1;->g:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v1, :cond_0

    .line 32
    invoke-static {p1}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v2, :cond_1

    .line 33
    invoke-static/range {p6 .. p6}, Lcom/tencent/mna/n1;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v2, 0x2

    move/from16 v3, p8

    if-eq v3, v2, :cond_5

    if-nez v1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0xfded

    const v6, 0xfded

    goto :goto_3

    .line 37
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/mna/j1;->b:I

    iget-object v4, v0, Lcom/tencent/mna/j1;->c:Ljava/lang/String;

    iget v6, v0, Lcom/tencent/mna/j1;->d:I

    iget-object v7, v0, Lcom/tencent/mna/j1;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/mna/j1;->f:Ljava/lang/String;

    iget v9, v0, Lcom/tencent/mna/j1;->g:I

    const/4 v10, 0x0

    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v10

    invoke-static/range {p1 .. p8}, Lcom/tencent/mna/base/jni/c;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v2

    move v6, v2

    :goto_3
    if-nez v1, :cond_5

    if-eqz v5, :cond_4

    const v6, 0xfde9

    goto :goto_4

    :cond_4
    const v6, 0xfdea

    :cond_5
    :goto_4
    return v6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18

    move-object/from16 v9, p0

    .line 2
    invoke-static {}, Lcom/tencent/mna/d;->C0()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/tencent/mna/d;->F0()I

    move-result v2

    .line 4
    invoke-static {}, Lcom/tencent/mna/d;->D0()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/tencent/mna/d;->G0()I

    move-result v4

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->H()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {}, Lcom/tencent/mna/d;->I()I

    move-result v7

    .line 8
    invoke-static {}, Lcom/tencent/mna/d;->E0()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {}, Lcom/tencent/mna/d;->L()I

    move-result v8

    move-object/from16 v0, p0

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mna/j1;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 13
    new-instance v1, Lcom/tencent/mna/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/tencent/mna/j1;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/tencent/mna/j1;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lcom/tencent/mna/j1;->f:Ljava/lang/String;

    const-string v13, "0.0.0.0"

    const-string v17, ""

    const/4 v11, 0x1

    const-string v12, "0.0.0.0"

    move-object v10, v1

    move/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/tencent/mna/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, v9, Lcom/tencent/mna/j1;->h:Lcom/tencent/mna/f;

    .line 20
    sget-object v2, Lcom/tencent/mna/w;->a:Ljava/util/Locale;

    iget v1, v1, Lcom/tencent/mna/f;->g:I

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v9, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    iget-object v4, v9, Lcom/tencent/mna/j1;->c:Ljava/lang/String;

    iget-object v5, v9, Lcom/tencent/mna/j1;->e:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    .line 23
    const-string v1, "[N]START_SPEED [InoAcc] errCode:%d, proxyIp1:[%s], proxyIp2:[%s], proxyIp3:[%s]"

    invoke-static {v2, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;IILcom/tencent/mna/f1;)Lcom/tencent/mna/e1;
    .locals 7

    .line 38
    new-instance v6, Lcom/tencent/mna/j1$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/j1$a;-><init>(Lcom/tencent/mna/j1;Ljava/lang/String;IILcom/tencent/mna/f1;)V

    return-object v6
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "InoAccelerator"

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->a()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/tencent/mna/k;
    .locals 8

    .line 1
    new-instance v0, Lcom/tencent/mna/k;

    invoke-direct {v0}, Lcom/tencent/mna/k;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->h()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->a:J

    .line 3
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->b:J

    .line 5
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->f()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->c:J

    .line 6
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->d:J

    .line 8
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->e:J

    .line 9
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->g()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->f:J

    .line 10
    invoke-static {}, Lcom/tencent/mna/base/jni/c;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mna/k;->g:J

    .line 11
    iget-wide v3, v0, Lcom/tencent/mna/k;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->b:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->c:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->d:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->e:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, v0, Lcom/tencent/mna/k;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/tencent/mna/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j1;->h:Lcom/tencent/mna/f;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/j1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/j1;->b:I

    return v0
.end method
