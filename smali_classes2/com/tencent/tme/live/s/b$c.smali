.class public Lcom/tencent/tme/live/s/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/s/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/s/b$c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/o/f;

.field public b:Z

.field public c:Lcom/tencent/tme/live/s/b$c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tme/live/o/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/tme/live/o/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c;->b:Z

    new-instance v0, Lcom/tencent/tme/live/s/b$c$a;

    invoke-direct {v0, p0}, Lcom/tencent/tme/live/s/b$c$a;-><init>(Lcom/tencent/tme/live/s/b$c;)V

    iput-object v0, p0, Lcom/tencent/tme/live/s/b$c;->c:Lcom/tencent/tme/live/s/b$c$a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/s/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tme/live/s/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/s/b$g;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v9, p2

    check-cast v9, Lcom/tencent/tme/live/o/a;

    invoke-virtual {v9}, Lcom/tencent/tme/live/o/a;->d()I

    const/4 v10, 0x0

    int-to-float v11, v10

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result v1

    const/4 v12, 0x1

    if-nez v1, :cond_1

    iget-object v2, v8, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v2}, Lcom/tencent/tme/live/o/f;->c()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v9, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 3
    iput-boolean v10, v8, Lcom/tencent/tme/live/s/b$c;->b:Z

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$c;->c:Lcom/tencent/tme/live/s/b$c$a;

    iput-object v9, v1, Lcom/tencent/tme/live/s/b$c$a;->a:Lcom/tencent/tme/live/n/k;

    iput-object v0, v1, Lcom/tencent/tme/live/s/b$c$a;->g:Lcom/tencent/tme/live/n/b;

    iget-object v2, v8, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    .line 4
    iget-object v4, v2, Lcom/tencent/tme/live/o/f;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/j$b;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v1, v8, Lcom/tencent/tme/live/s/b$c;->c:Lcom/tencent/tme/live/s/b$c$a;

    invoke-virtual {v1}, Lcom/tencent/tme/live/s/b$c$a;->c()Lcom/tencent/tme/live/s/b$f;

    move-result-object v1

    iget v13, v1, Lcom/tencent/tme/live/s/b$f;->a:I

    iget-object v2, v1, Lcom/tencent/tme/live/s/b$f;->b:Lcom/tencent/tme/live/n/b;

    iget-object v6, v1, Lcom/tencent/tme/live/s/b$f;->c:Lcom/tencent/tme/live/n/b;

    iget-object v7, v1, Lcom/tencent/tme/live/s/b$f;->d:Lcom/tencent/tme/live/n/b;

    iget-object v4, v1, Lcom/tencent/tme/live/s/b$f;->e:Lcom/tencent/tme/live/n/b;

    iget-boolean v5, v1, Lcom/tencent/tme/live/s/b$f;->g:Z

    iget-boolean v14, v1, Lcom/tencent/tme/live/s/b$f;->h:Z

    iget-boolean v1, v1, Lcom/tencent/tme/live/s/b$f;->i:Z

    if-eqz v2, :cond_4

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/tencent/tme/live/n/b;->b()F

    move-result v4

    add-float/2addr v4, v11

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v4

    :goto_1
    if-eq v2, v0, :cond_3

    move v14, v1

    move-object v15, v2

    move/from16 v16, v4

    goto :goto_3

    :cond_3
    move-object v15, v3

    move/from16 v16, v4

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v4

    move v14, v1

    move-object v15, v3

    move/from16 v16, v4

    const/4 v1, 0x0

    :goto_2
    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/tencent/tme/live/n/b;->b()F

    move-result v1

    add-float v4, v1, v11

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v14

    const/4 v1, 0x1

    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v4

    move v14, v1

    move/from16 v16, v4

    move-object v15, v6

    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Lcom/tencent/tme/live/o/a;->d()I

    move-object v15, v3

    move/from16 v16, v11

    :goto_4
    move/from16 v17, v14

    move v14, v1

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_8

    move-object/from16 v1, p0

    move v2, v5

    move-object/from16 v3, p1

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/tme/live/s/b$c;->a(ZLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;FLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z

    move-result v1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {v9}, Lcom/tencent/tme/live/o/a;->d()I

    move/from16 v16, v11

    const/4 v13, 0x1

    goto :goto_7

    :cond_9
    if-eqz v15, :cond_a

    add-int/lit8 v12, v13, -0x1

    move v13, v12

    :cond_a
    move v12, v14

    :goto_7
    invoke-virtual {v9}, Lcom/tencent/tme/live/o/a;->d()I

    cmpl-float v2, v16, v11

    move v4, v1

    if-nez v2, :cond_b

    move v2, v12

    move v10, v13

    move-object v3, v15

    move/from16 v11, v16

    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    move v2, v12

    move v10, v13

    move-object v3, v15

    move/from16 v11, v16

    move/from16 v1, v17

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    const/4 v4, 0x0

    :goto_8
    if-eqz p3, :cond_d

    .line 7
    move-object/from16 v5, p3

    check-cast v5, Lcom/tencent/tme/live/s/a$a;

    invoke-virtual {v5, v0, v11, v10, v2}, Lcom/tencent/tme/live/s/a$a;->a(Lcom/tencent/tme/live/n/b;FIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    return-void

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tme/live/s/b$c;->clear()V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tme/live/n/b;->c()F

    move-result v2

    invoke-virtual {v0, v9, v2, v11}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;FF)V

    if-nez v1, :cond_f

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v3}, Lcom/tencent/tme/live/o/f;->b(Lcom/tencent/tme/live/n/b;)Z

    iget-object v1, v8, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    :cond_f
    return-void
.end method

.method public a(ZLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;FLcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z
    .locals 0

    check-cast p3, Lcom/tencent/tme/live/o/a;

    invoke-virtual {p3}, Lcom/tencent/tme/live/o/a;->d()I

    const/4 p1, 0x0

    int-to-float p6, p1

    cmpg-float p6, p4, p6

    if-ltz p6, :cond_2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/tencent/tme/live/n/b;->e()F

    move-result p5

    const/4 p6, 0x0

    cmpl-float p5, p5, p6

    if-gtz p5, :cond_2

    :cond_0
    iget p2, p2, Lcom/tencent/tme/live/n/b;->n:F

    add-float/2addr p4, p2

    .line 8
    iget p2, p3, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float p2, p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/s/b$c;->b:Z

    iget-object v0, p0, Lcom/tencent/tme/live/s/b$c;->a:Lcom/tencent/tme/live/o/f;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/f;->a()V

    return-void
.end method
