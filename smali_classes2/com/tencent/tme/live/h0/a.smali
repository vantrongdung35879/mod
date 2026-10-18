.class public Lcom/tencent/tme/live/h0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/h0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/live/h0/a$b;,
        Lcom/tencent/tme/live/h0/a$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tencent/tme/live/h0/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/h0/c;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lcom/tencent/tme/live/h0/c;->f:Lcom/tencent/tme/live/j0/b;

    .line 2
    iget-object v3, v0, Lcom/tencent/tme/live/h0/c;->b:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lcom/tencent/tme/live/h0/c;->g:Ljava/lang/Object;

    .line 4
    invoke-interface {v2, v3, v4}, Lcom/tencent/tme/live/j0/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    .line 6
    iget-object v0, v0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    .line 7
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 8
    const-string v0, "No stream for image [%s]"

    invoke-static {v4, v3, v0, v2}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v0}, Lcom/tencent/tme/live/h0/a;->a(Ljava/io/InputStream;Lcom/tencent/tme/live/h0/c;)Lcom/tencent/tme/live/h0/a$b;

    move-result-object v7

    .line 10
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    .line 11
    iget-object v8, v0, Lcom/tencent/tme/live/h0/c;->f:Lcom/tencent/tme/live/j0/b;

    .line 12
    iget-object v9, v0, Lcom/tencent/tme/live/h0/c;->b:Ljava/lang/String;

    .line 13
    iget-object v10, v0, Lcom/tencent/tme/live/h0/c;->g:Ljava/lang/Object;

    .line 14
    invoke-interface {v8, v9, v10}, Lcom/tencent/tme/live/j0/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    .line 15
    :goto_0
    iget-object v8, v7, Lcom/tencent/tme/live/h0/a$b;->a:Lcom/tencent/tme/live/f0/e;

    invoke-virtual {v1, v8, v0}, Lcom/tencent/tme/live/h0/a;->a(Lcom/tencent/tme/live/f0/e;Lcom/tencent/tme/live/h0/c;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    invoke-static {v2, v3, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    if-nez v8, :cond_2

    .line 16
    iget-object v0, v0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    .line 17
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 18
    const-string v0, "Image can\'t be decoded [%s]"

    invoke-static {v4, v3, v0, v2}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 19
    :cond_2
    iget-object v2, v7, Lcom/tencent/tme/live/h0/a$b;->b:Lcom/tencent/tme/live/h0/a$a;

    iget v3, v2, Lcom/tencent/tme/live/h0/a$a;->a:I

    iget-boolean v2, v2, Lcom/tencent/tme/live/h0/a$a;->b:Z

    .line 20
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iget v7, v0, Lcom/tencent/tme/live/h0/c;->d:I

    const/4 v9, 0x5

    if-eq v7, v9, :cond_3

    if-ne v7, v4, :cond_b

    .line 22
    :cond_3
    new-instance v9, Lcom/tencent/tme/live/f0/e;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v12, v13, v3}, Lcom/tencent/tme/live/f0/e;-><init>(III)V

    .line 23
    iget-object v12, v0, Lcom/tencent/tme/live/h0/c;->c:Lcom/tencent/tme/live/f0/e;

    .line 24
    iget v13, v0, Lcom/tencent/tme/live/h0/c;->e:I

    if-ne v7, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 25
    :goto_1
    sget-object v7, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 26
    iget v7, v9, Lcom/tencent/tme/live/f0/e;->a:I

    .line 27
    iget v15, v9, Lcom/tencent/tme/live/f0/e;->b:I

    .line 28
    iget v5, v12, Lcom/tencent/tme/live/f0/e;->a:I

    .line 29
    iget v12, v12, Lcom/tencent/tme/live/f0/e;->b:I

    int-to-float v11, v7

    int-to-float v10, v5

    div-float v10, v11, v10

    int-to-float v6, v15

    move/from16 v16, v5

    int-to-float v5, v12

    div-float v5, v6, v5

    move/from16 v17, v12

    const/4 v12, 0x1

    if-ne v13, v12, :cond_5

    cmpl-float v12, v10, v5

    if-gez v12, :cond_6

    :cond_5
    const/4 v12, 0x2

    if-ne v13, v12, :cond_7

    cmpg-float v12, v10, v5

    if-gez v12, :cond_7

    :cond_6
    div-float/2addr v6, v10

    float-to-int v12, v6

    move/from16 v5, v16

    goto :goto_2

    :cond_7
    div-float v5, v11, v5

    float-to-int v5, v5

    move/from16 v12, v17

    :goto_2
    if-nez v4, :cond_8

    if-ge v5, v7, :cond_8

    if-lt v12, v15, :cond_9

    :cond_8
    if-eqz v4, :cond_a

    if-eq v5, v7, :cond_a

    if-eq v12, v15, :cond_a

    :cond_9
    int-to-float v4, v5

    div-float/2addr v4, v11

    goto :goto_3

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v14, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v5, v1, Lcom/tencent/tme/live/h0/a;->a:Z

    if-eqz v5, :cond_b

    .line 31
    new-instance v5, Lcom/tencent/tme/live/f0/e;

    iget v6, v9, Lcom/tencent/tme/live/f0/e;->a:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    iget v7, v9, Lcom/tencent/tme/live/f0/e;->b:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    .line 32
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 33
    iget-object v6, v0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    const/4 v7, 0x4

    .line 34
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const/4 v4, 0x3

    aput-object v6, v7, v4

    const-string v4, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    invoke-static {v4, v7}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v2, :cond_c

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v14, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-boolean v2, v1, Lcom/tencent/tme/live/h0/a;->a:Z

    if-eqz v2, :cond_c

    .line 35
    iget-object v2, v0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    const/4 v4, 0x1

    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const-string v2, "Flip image horizontally [%s]"

    invoke-static {v2, v5}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz v3, :cond_d

    int-to-float v2, v3

    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-boolean v2, v1, Lcom/tencent/tme/live/h0/a;->a:Z

    if-eqz v2, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 37
    iget-object v0, v0, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "Rotate image on %1$d\u00b0 [%2$s]"

    invoke-static {v0, v3}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/4 v10, 0x0

    move-object v9, v8

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v8, :cond_e

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    move-object v8, v0

    :goto_4
    return-object v8

    :catchall_0
    move-exception v0

    .line 39
    invoke-static {v2}, Lcom/tencent/tme/live/n0/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public a(Lcom/tencent/tme/live/f0/e;Lcom/tencent/tme/live/h0/c;)Landroid/graphics/BitmapFactory$Options;
    .locals 13

    .line 48
    iget v0, p2, Lcom/tencent/tme/live/h0/c;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_0
    if-ne v0, v3, :cond_1

    .line 49
    sget-object v0, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 50
    iget v0, p1, Lcom/tencent/tme/live/f0/e;->a:I

    .line 51
    iget v5, p1, Lcom/tencent/tme/live/f0/e;->b:I

    .line 52
    sget-object v6, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 53
    iget v7, v6, Lcom/tencent/tme/live/f0/e;->a:I

    .line 54
    iget v6, v6, Lcom/tencent/tme/live/f0/e;->b:I

    int-to-float v0, v0

    int-to-float v7, v7

    div-float/2addr v0, v7

    float-to-double v7, v0

    .line 55
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_5

    .line 56
    :cond_1
    iget-object v5, p2, Lcom/tencent/tme/live/h0/c;->c:Lcom/tencent/tme/live/f0/e;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget v6, p2, Lcom/tencent/tme/live/h0/c;->e:I

    .line 58
    sget-object v7, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 59
    iget v7, p1, Lcom/tencent/tme/live/f0/e;->a:I

    .line 60
    iget v8, p1, Lcom/tencent/tme/live/f0/e;->b:I

    .line 61
    iget v9, v5, Lcom/tencent/tme/live/f0/e;->a:I

    .line 62
    iget v5, v5, Lcom/tencent/tme/live/f0/e;->b:I

    .line 63
    invoke-static {v6}, Lcom/tencent/tme/live/f0/b;->a(I)I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v4, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    div-int/lit8 v6, v7, 0x2

    div-int/lit8 v10, v8, 0x2

    const/4 v11, 0x1

    :goto_1
    div-int v12, v6, v11

    if-le v12, v9, :cond_8

    div-int v12, v10, v11

    if-le v12, v5, :cond_8

    mul-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    div-int v6, v7, v9

    div-int v5, v8, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    div-int/lit8 v6, v7, 0x2

    div-int/lit8 v10, v8, 0x2

    const/4 v11, 0x1

    :goto_2
    div-int v12, v6, v11

    if-gt v12, v9, :cond_6

    div-int v12, v10, v11

    if-le v12, v5, :cond_8

    :cond_6
    mul-int/lit8 v11, v11, 0x2

    goto :goto_2

    :cond_7
    div-int v6, v7, v9

    div-int v5, v8, v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_8
    :goto_3
    if-ge v11, v4, :cond_9

    const/4 v11, 0x1

    .line 64
    :cond_9
    sget-object v5, Lcom/tencent/tme/live/n0/a;->a:Lcom/tencent/tme/live/f0/e;

    .line 65
    iget v6, v5, Lcom/tencent/tme/live/f0/e;->a:I

    .line 66
    iget v5, v5, Lcom/tencent/tme/live/f0/e;->b:I

    .line 67
    :goto_4
    div-int v9, v7, v11

    if-gt v9, v6, :cond_c

    div-int v9, v8, v11

    if-le v9, v5, :cond_a

    goto :goto_6

    :cond_a
    move v0, v11

    :goto_5
    if-le v0, v4, :cond_b

    .line 68
    iget-boolean v5, p0, Lcom/tencent/tme/live/h0/a;->a:Z

    if-eqz v5, :cond_b

    .line 69
    new-instance v5, Lcom/tencent/tme/live/f0/e;

    iget v6, p1, Lcom/tencent/tme/live/f0/e;->a:I

    div-int/2addr v6, v0

    iget v7, p1, Lcom/tencent/tme/live/f0/e;->b:I

    div-int/2addr v7, v0

    invoke-direct {v5, v6, v7}, Lcom/tencent/tme/live/f0/e;-><init>(II)V

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 71
    iget-object v7, p2, Lcom/tencent/tme/live/h0/c;->a:Ljava/lang/String;

    const/4 v8, 0x4

    .line 72
    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v1

    aput-object v5, v8, v4

    aput-object v6, v8, v3

    aput-object v7, v8, v2

    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    invoke-static {p1, v8}, Lcom/tencent/tme/live/n0/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_b
    iget-object p1, p2, Lcom/tencent/tme/live/h0/c;->i:Landroid/graphics/BitmapFactory$Options;

    .line 74
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    mul-int/lit8 v11, v11, 0x2

    goto :goto_4

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public a(Ljava/io/InputStream;Lcom/tencent/tme/live/h0/c;)Lcom/tencent/tme/live/h0/a$b;
    .locals 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 40
    iget-object p1, p2, Lcom/tencent/tme/live/h0/c;->b:Ljava/lang/String;

    .line 41
    iget-boolean p2, p2, Lcom/tencent/tme/live/h0/c;->h:Z

    if-eqz p2, :cond_0

    .line 42
    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 43
    const-string v3, "image/jpeg"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tencent/tme/live/j0/b$a;->b(Ljava/lang/String;)Lcom/tencent/tme/live/j0/b$a;

    move-result-object p2

    sget-object v3, Lcom/tencent/tme/live/j0/b$a;->e:Lcom/tencent/tme/live/j0/b$a;

    if-ne p2, v3, :cond_0

    const/4 p2, 0x0

    .line 44
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    sget-object v4, Lcom/tencent/tme/live/j0/b$a;->e:Lcom/tencent/tme/live/j0/b$a;

    invoke-virtual {v4, p1}, Lcom/tencent/tme/live/j0/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    invoke-virtual {v3, v4, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    :pswitch_2
    const/16 p2, 0x5a

    goto :goto_2

    :goto_0
    :pswitch_3
    const/16 p2, 0x10e

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x0

    :pswitch_5
    const/16 p2, 0xb4

    goto :goto_2

    :catch_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, p2

    const/4 p1, 0x5

    .line 45
    const-string v3, "Can\'t read EXIF tags from file [%s]"

    invoke-static {p1, v2, v3, v1}, Lcom/tencent/tme/live/n0/c;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    :pswitch_6
    const/4 v1, 0x0

    .line 46
    :goto_2
    :pswitch_7
    new-instance p1, Lcom/tencent/tme/live/h0/a$a;

    invoke-direct {p1, p2, v1}, Lcom/tencent/tme/live/h0/a$a;-><init>(IZ)V

    goto :goto_3

    .line 47
    :cond_0
    new-instance p1, Lcom/tencent/tme/live/h0/a$a;

    invoke-direct {p1}, Lcom/tencent/tme/live/h0/a$a;-><init>()V

    :goto_3
    new-instance p2, Lcom/tencent/tme/live/h0/a$b;

    new-instance v1, Lcom/tencent/tme/live/f0/e;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p1, Lcom/tencent/tme/live/h0/a$a;->a:I

    invoke-direct {v1, v2, v0, v3}, Lcom/tencent/tme/live/f0/e;-><init>(III)V

    invoke-direct {p2, v1, p1}, Lcom/tencent/tme/live/h0/a$b;-><init>(Lcom/tencent/tme/live/f0/e;Lcom/tencent/tme/live/h0/a$a;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
