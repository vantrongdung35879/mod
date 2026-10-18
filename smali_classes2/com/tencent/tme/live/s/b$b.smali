.class public Lcom/tencent/tme/live/s/b$b;
.super Lcom/tencent/tme/live/s/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/s/b$b$a;
    }
.end annotation


# instance fields
.field public d:Lcom/tencent/tme/live/s/b$b$a;

.field public e:Lcom/tencent/tme/live/o/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tme/live/s/b$d;-><init>(Lcom/tencent/tme/live/s/b$a;)V

    new-instance v0, Lcom/tencent/tme/live/s/b$b$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/s/b$b$a;-><init>(Lcom/tencent/tme/live/s/b$b;)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$b;->d:Lcom/tencent/tme/live/s/b$b$a;

    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/s/b$g;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_2

    iget-object v3, v8, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v3}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v11, p2

    check-cast v11, Lcom/tencent/tme/live/o/a;

    invoke-virtual {v11}, Lcom/tencent/tme/live/o/a;->d()I

    int-to-float v12, v10

    cmpg-float v4, v2, v12

    if-gez v4, :cond_3

    .line 1
    iget v2, v11, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float v2, v2

    .line 2
    iget v4, v0, Lcom/tencent/tme/live/n/b;->n:F

    sub-float/2addr v2, v4

    :cond_3
    if-nez v1, :cond_7

    iput-boolean v10, v8, Lcom/tencent/tme/live/s/b$c;->b:Z

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$b;->d:Lcom/tencent/tme/live/s/b$b$a;

    iput v2, v1, Lcom/tencent/tme/live/s/b$b$a;->g:F

    iput-object v11, v1, Lcom/tencent/tme/live/s/b$b$a;->a:Lcom/tencent/tme/live/n/k;

    iput-object v0, v1, Lcom/tencent/tme/live/s/b$b$a;->e:Lcom/tencent/tme/live/n/b;

    iget-object v2, v8, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    .line 3
    iget-object v4, v2, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, v8, Lcom/tencent/tme/live/s/b$b;->d:Lcom/tencent/tme/live/s/b$b$a;

    invoke-virtual {v1}, Lcom/tencent/tme/live/s/b$b$a;->c()Lcom/tencent/tme/live/s/b$f;

    move-result-object v1

    iget-object v2, v8, Lcom/tencent/tme/live/s/b$b;->d:Lcom/tencent/tme/live/s/b$b$a;

    iget v13, v2, Lcom/tencent/tme/live/s/b$b$a;->g:F

    iget v14, v1, Lcom/tencent/tme/live/s/b$f;->a:I

    iget-object v6, v1, Lcom/tencent/tme/live/s/b$f;->c:Lcom/tencent/tme/live/n/b;

    iget-object v15, v1, Lcom/tencent/tme/live/s/b$f;->f:Lcom/tencent/tme/live/n/b;

    iget-boolean v7, v1, Lcom/tencent/tme/live/s/b$f;->h:Z

    iget-boolean v5, v1, Lcom/tencent/tme/live/s/b$f;->i:Z

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v17, v5

    move v5, v13

    move/from16 v18, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/tme/live/s/b$b;->a(ZLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;FLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget v2, v11, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float v2, v2

    .line 6
    iget v3, v0, Lcom/tencent/tme/live/n/b;->n:F

    sub-float/2addr v2, v3

    move v10, v1

    move/from16 v1, v18

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Lcom/tencent/tme/live/o/a;->d()I

    cmpl-float v2, v13, v12

    if-ltz v2, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move/from16 v9, v17

    :goto_2
    if-eqz v15, :cond_6

    add-int/lit8 v2, v14, -0x1

    move v10, v1

    move v3, v9

    move/from16 v1, v18

    move v9, v2

    move v2, v13

    goto :goto_3

    :cond_6
    move v10, v1

    move v3, v9

    move v2, v13

    move v9, v14

    move/from16 v1, v18

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    const/4 v15, 0x0

    const/4 v9, 0x0

    :goto_3
    if-eqz p3, :cond_8

    .line 8
    move-object/from16 v4, p3

    check-cast v4, Lcom/tencent/tme/live/s/a$a;

    invoke-virtual {v4, v0, v2, v9, v3}, Lcom/tencent/tme/live/s/a$a;->a(Lcom/tencent/tme/live/n/b;FIZ)Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/s/b$b;->clear()V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->c()F

    move-result v3

    invoke-virtual {v0, v11, v3, v2}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;FF)V

    if-nez v1, :cond_a

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v15}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/b;)Z

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    :cond_a
    return-void
.end method

.method public a(ZLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;FLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z
    .locals 0

    check-cast p3, Lcom/tencent/tme/live/o/a;

    invoke-virtual {p3}, Lcom/tencent/tme/live/o/a;->d()I

    const/4 p1, 0x0

    int-to-float p2, p1

    cmpg-float p2, p4, p2

    if-ltz p2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/tencent/tme/live/n/b;->b()F

    move-result p2

    .line 9
    iget p3, p3, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c;->b:Z

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$b;->e:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    return-void
.end method
