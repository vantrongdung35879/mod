.class public Lcom/tencent/tme/live/o/a;
.super Lcom/tencent/tme/live/n/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/o/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/a<",
        "Landroid/graphics/Canvas;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Camera;

.field public b:Landroid/graphics/Matrix;

.field public final c:Lcom/tencent/tme/live/o/a$a;

.field public d:Lcom/tencent/tme/live/o/b;

.field public e:Landroid/graphics/Canvas;

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tme/live/n/a;-><init>()V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/a;->a:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/a;->b:Landroid/graphics/Matrix;

    new-instance v0, Lcom/tencent/tme/live/o/a$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/a$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    new-instance v0, Lcom/tencent/tme/live/o/j;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/tme/live/o/a;->i:F

    const/16 v1, 0xa0

    iput v1, p0, Lcom/tencent/tme/live/o/a;->j:I

    iput v0, p0, Lcom/tencent/tme/live/o/a;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/o/a;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tme/live/o/a;->m:Z

    const/16 v0, 0x800

    iput v0, p0, Lcom/tencent/tme/live/o/a;->n:I

    iput v0, p0, Lcom/tencent/tme/live/o/a;->o:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    invoke-virtual {v0}, Lcom/tencent/tme/live/o/b;->a()V

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 1
    iget-object v0, v0, Lcom/tencent/tme/live/o/a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iput-boolean v1, v0, Lcom/tencent/tme/live/o/a$a;->w:Z

    iput p1, v0, Lcom/tencent/tme/live/o/a$a;->v:F

    return-void
.end method

.method public a(II)V
    .locals 2

    iput p1, p0, Lcom/tencent/tme/live/o/a;->f:I

    iput p2, p0, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide v0, 0x3fdeb7c166fdfe3aL    # 0.4799655442984406

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/tencent/tme/live/o/a;->h:F

    return-void
.end method

.method public declared-synchronized a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FFZ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p3

    move/from16 v11, p4

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    if-eqz v2, :cond_c

    iget-object v12, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    move-object v13, v2

    check-cast v13, Lcom/tencent/tme/live/o/j;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v2, v0, Lcom/tencent/tme/live/n/b;->j:I

    int-to-float v2, v2

    add-float/2addr v2, v10

    iget v3, v0, Lcom/tencent/tme/live/n/b;->k:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    iget v4, v0, Lcom/tencent/tme/live/n/b;->i:I

    if-eqz v4, :cond_0

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v2, v4

    add-float/2addr v3, v4

    :cond_0
    move v15, v2

    move v14, v3

    .line 3
    iget-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->p:Z

    iput-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->q:Z

    iget-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->n:Z

    iput-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->o:Z

    iget-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->r:Z

    iput-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->s:Z

    iget-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->t:Z

    iput-boolean v2, v12, Lcom/tencent/tme/live/o/a$a;->u:Z

    move/from16 v9, p5

    .line 4
    invoke-virtual {v12, v0, v9}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Z)Landroid/text/TextPaint;

    move-result-object v8

    move-object/from16 v7, p2

    invoke-virtual {v13, v0, v7, v10, v11}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FF)V

    iget-object v6, v0, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v6, :cond_8

    array-length v2, v6

    if-ne v2, v5, :cond_3

    invoke-virtual {v12, v0}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12, v0, v8, v5}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v2, v14, v2

    iget-boolean v3, v12, Lcom/tencent/tme/live/o/a$a;->s:Z

    if-eqz v3, :cond_1

    iget v3, v12, Lcom/tencent/tme/live/o/a$a;->k:F

    add-float/2addr v3, v15

    iget v5, v12, Lcom/tencent/tme/live/o/a$a;->l:F

    add-float/2addr v2, v5

    move/from16 v17, v2

    move/from16 v16, v3

    goto :goto_0

    :cond_1
    move/from16 v17, v2

    move/from16 v16, v15

    :goto_0
    aget-object v5, v6, v4

    move-object v2, v13

    move-object/from16 v3, p1

    const/4 v11, 0x0

    move-object v4, v5

    move-object/from16 v5, p2

    move-object/from16 v18, v6

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v16, v8

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    move-object/from16 v8, v16

    goto :goto_1

    :cond_2
    move-object/from16 v18, v6

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v12, v0, v8, v11}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    move-object/from16 v7, v18

    aget-object v4, v7, v11

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v7, v14, v2

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move v6, v15

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto/16 :goto_9

    :cond_3
    move-object v7, v6

    const/4 v11, 0x0

    iget v2, v0, Lcom/tencent/tme/live/n/b;->n:F

    iget v3, v0, Lcom/tencent/tme/live/n/b;->k:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    array-length v3, v7

    int-to-float v3, v3

    div-float v16, v2, v3

    const/4 v6, 0x0

    :goto_2
    array-length v2, v7

    if-ge v6, v2, :cond_b

    aget-object v2, v7, v6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v12, v0}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v12, v0, v8, v5}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    int-to-float v2, v6

    mul-float v2, v2, v16

    add-float/2addr v2, v14

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-boolean v3, v12, Lcom/tencent/tme/live/o/a$a;->s:Z

    if-eqz v3, :cond_5

    iget v3, v12, Lcom/tencent/tme/live/o/a$a;->k:F

    add-float/2addr v3, v15

    iget v4, v12, Lcom/tencent/tme/live/o/a$a;->l:F

    add-float/2addr v2, v4

    move/from16 v18, v2

    move/from16 v17, v3

    goto :goto_3

    :cond_5
    move/from16 v18, v2

    move/from16 v17, v15

    :goto_3
    aget-object v4, v7, v6

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v19, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    move-object/from16 v8, v18

    goto :goto_4

    :cond_6
    move/from16 v19, v6

    move-object/from16 v17, v7

    :goto_4
    invoke-virtual {v12, v0, v8, v11}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    move/from16 v7, v19

    aget-object v4, v17, v7

    int-to-float v2, v7

    mul-float v2, v2, v16

    add-float/2addr v2, v14

    invoke-virtual {v8}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float v18, v2, v3

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move v6, v15

    move/from16 v19, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    goto :goto_6

    :cond_7
    :goto_5
    move/from16 v19, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    :goto_6
    add-int/lit8 v6, v19, 0x1

    move/from16 v9, p5

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v18, v8

    const/4 v11, 0x0

    invoke-virtual {v12, v0}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v9, v18

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v9, v2}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v2, v14, v2

    iget-boolean v3, v12, Lcom/tencent/tme/live/o/a$a;->s:Z

    if-eqz v3, :cond_9

    iget v3, v12, Lcom/tencent/tme/live/o/a$a;->k:F

    add-float/2addr v3, v15

    iget v4, v12, Lcom/tencent/tme/live/o/a$a;->l:F

    add-float/2addr v2, v4

    move v7, v2

    move v6, v3

    goto :goto_7

    :cond_9
    move v7, v2

    move v6, v15

    :goto_7
    const/4 v4, 0x0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_a
    move-object/from16 v9, v18

    :goto_8
    invoke-virtual {v12, v0, v9, v11}, Lcom/tencent/tme/live/o/a$a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Paint;Z)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float v7, v14, v2

    const/4 v4, 0x0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move v6, v15

    move-object v8, v9

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/tencent/tme/live/o/j;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V

    :cond_b
    :goto_9
    iget v2, v0, Lcom/tencent/tme/live/n/b;->i:I

    if-eqz v2, :cond_c

    .line 5
    iget-object v3, v12, Lcom/tencent/tme/live/o/a$a;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v12, Lcom/tencent/tme/live/o/a$a;->g:Landroid/graphics/Paint;

    .line 6
    iget v2, v0, Lcom/tencent/tme/live/n/b;->m:F

    add-float v5, v10, v2

    iget v0, v0, Lcom/tencent/tme/live/n/b;->n:F

    add-float v6, p4, v0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(Lcom/tencent/tme/live/n/b;Ljava/lang/Object;FFZ)V
    .locals 0

    check-cast p2, Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p5}, Lcom/tencent/tme/live/o/a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FFZ)V

    return-void
.end method

.method public a(Lcom/tencent/tme/live/o/b;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Canvas;

    .line 7
    iput-object p1, p0, Lcom/tencent/tme/live/o/a;->e:Landroid/graphics/Canvas;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/o/a;->f:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/tme/live/o/a;->g:I

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a;->m:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v0

    .line 9
    iput v0, p0, Lcom/tencent/tme/live/o/a;->n:I

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p1

    .line 11
    iput p1, p0, Lcom/tencent/tme/live/o/a;->o:I

    :cond_0
    return-void
.end method

.method public b()Lcom/tencent/tme/live/o/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/o/a;->f:I

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v1, v0

    iput v1, p0, Lcom/tencent/tme/live/o/a;->l:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/tencent/tme/live/o/a;->l:I

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->e:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/o/a;->m:Z

    return v0
.end method
