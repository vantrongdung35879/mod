.class public Lcom/tencent/tme/live/t/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/o/g;I)Lcom/tencent/tme/live/o/g;
    .locals 16

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    new-instance v0, Lcom/tencent/tme/live/o/g;

    invoke-direct {v0}, Lcom/tencent/tme/live/o/g;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    iget v0, v1, Lcom/tencent/tme/live/n/b;->m:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Lcom/tencent/tme/live/n/b;->n:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v7, p1

    check-cast v7, Lcom/tencent/tme/live/o/a;

    .line 1
    iget v3, v7, Lcom/tencent/tme/live/o/a;->j:I

    .line 2
    iget-object v4, v6, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    .line 3
    iget v5, v4, Lcom/tencent/tme/live/o/h;->d:I

    const/4 v8, 0x0

    if-gt v0, v5, :cond_1

    iget v5, v4, Lcom/tencent/tme/live/o/h;->e:I

    if-gt v2, v5, :cond_1

    iget-object v5, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, v4, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    iget-object v2, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/tencent/tme/live/o/h;->b()V

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/tencent/tme/live/o/h;->a()V

    :cond_2
    iput v0, v4, Lcom/tencent/tme/live/o/h;->d:I

    iput v2, v4, Lcom/tencent/tme/live/o/h;->e:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v9, 0x20

    move/from16 v10, p3

    if-ne v10, v9, :cond_3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_3
    invoke-static {v0, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-lez v3, :cond_4

    iput v3, v4, Lcom/tencent/tme/live/o/h;->f:I

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4
    iget-object v0, v4, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v4, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDensity(I)V

    goto :goto_1

    :cond_5
    iget-object v2, v4, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    :goto_1
    iget-object v0, v6, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    iget-object v0, v0, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v2, v6, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    iget-object v2, v2, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v2, v2, v0

    iput v2, v6, Lcom/tencent/tme/live/o/g;->b:I

    .line 5
    iget-object v0, v6, Lcom/tencent/tme/live/o/g;->a:Lcom/tencent/tme/live/o/h;

    iget-object v2, v0, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move-object v10, v0

    :goto_2
    if-eqz v10, :cond_f

    .line 6
    move-object/from16 v0, p1

    check-cast v0, Lcom/tencent/tme/live/n/a;

    iget-object v2, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tme/live/n/a;->a(Lcom/tencent/tme/live/n/b;Ljava/lang/Object;FFZ)V

    invoke-interface/range {p1 .. p1}, Lcom/tencent/tme/live/n/k;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7
    iget v0, v7, Lcom/tencent/tme/live/o/a;->f:I

    .line 8
    iget v1, v7, Lcom/tencent/tme/live/o/a;->g:I

    .line 9
    iget v2, v7, Lcom/tencent/tme/live/o/a;->n:I

    .line 10
    iget v3, v7, Lcom/tencent/tme/live/o/a;->o:I

    .line 11
    invoke-virtual {v10}, Lcom/tencent/tme/live/o/h;->b()V

    iget v4, v10, Lcom/tencent/tme/live/o/h;->d:I

    if-lez v4, :cond_f

    iget v5, v10, Lcom/tencent/tme/live/o/h;->e:I

    if-lez v5, :cond_f

    iget-object v7, v10, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    if-nez v7, :cond_7

    goto/16 :goto_7

    :cond_7
    if-gt v4, v2, :cond_8

    if-gt v5, v3, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v10, Lcom/tencent/tme/live/o/h;->d:I

    div-int v3, v2, v0

    rem-int v0, v2, v0

    const/4 v4, 0x1

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :goto_3
    add-int/2addr v3, v0

    iget v0, v10, Lcom/tencent/tme/live/o/h;->e:I

    div-int v5, v0, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    :goto_4
    add-int/2addr v5, v1

    div-int/2addr v2, v3

    div-int/2addr v0, v5

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v4

    aput v5, v1, v8

    const-class v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iget-object v4, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    if-nez v4, :cond_b

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    iget v7, v10, Lcom/tencent/tme/live/o/h;->f:I

    if-lez v7, :cond_b

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->setDensity(I)V

    :cond_b
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_e

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_d

    aget-object v13, v1, v11

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v12

    iget v13, v10, Lcom/tencent/tme/live/o/h;->f:I

    if-lez v13, :cond_c

    invoke-virtual {v14, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_c
    iget-object v13, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    mul-int v13, v12, v2

    mul-int v15, v11, v0

    add-int v9, v13, v2

    add-int v8, v15, v0

    invoke-virtual {v4, v13, v15, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v13, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    iget-object v9, v10, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-virtual {v8, v9, v4, v7, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :cond_e
    iget-object v0, v10, Lcom/tencent/tme/live/o/h;->a:Landroid/graphics/Canvas;

    iget-object v2, v10, Lcom/tencent/tme/live/o/h;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, v10, Lcom/tencent/tme/live/o/h;->c:[[Landroid/graphics/Bitmap;

    :cond_f
    :goto_7
    return-object v6
.end method

.method public static a(Lcom/tencent/tme/live/n/b;Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iput-object p1, p0, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/tencent/tme/live/n/b;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static a(Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;J)Z
    .locals 2

    invoke-virtual {p1, p0, p3, p4}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;J)[F

    move-result-object v0

    invoke-virtual {p2, p0, p3, p4}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;J)[F

    move-result-object p0

    const/4 p3, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/tencent/tme/live/n/b;->f()I

    move-result p2

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    .line 12
    aget p0, p0, p3

    aget p1, v0, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    aget p0, p0, p2

    aget p1, v0, p3

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    :goto_0
    const/4 p3, 0x1

    :cond_3
    :goto_1
    return p3
.end method

.method public static a(Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;JJ)Z
    .locals 8

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    return v1

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v3, p3

    if-gez v5, :cond_8

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x5

    if-eq v0, p3, :cond_7

    const/4 p3, 0x4

    if-ne v0, p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p5, p6}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;J)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide p3

    .line 13
    iget-object p5, p1, Lcom/tencent/tme/live/n/b;->o:Lcom/tencent/tme/live/n/e;

    iget-wide p5, p5, Lcom/tencent/tme/live/n/e;->c:J

    add-long/2addr p3, p5

    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/tme/live/t/a;->a(Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/b;J)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    return v2
.end method
