.class public Lcom/tencent/tme/live/c/a;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/net/Uri;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/tme/live/q2/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/graphics/Bitmap;

.field public d:Lcom/tencent/tme/live/e0/c;

.field public e:Lcom/tencent/tme/live/d/g;

.field public f:Landroid/graphics/Paint;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:F

.field public r:Ljava/io/File;

.field public s:Lcom/tencent/tme/live/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tme/live/c/a;->h:Z

    iput-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tme/live/c/a;->l:I

    iput v0, p0, Lcom/tencent/tme/live/c/a;->m:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/c/a;->q:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/tencent/tme/live/c/a;->f:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Lcom/tencent/tme/live/e0/c$a;

    invoke-direct {v1}, Lcom/tencent/tme/live/e0/c$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/tme/live/e0/c$a;->a(Z)Lcom/tencent/tme/live/e0/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tme/live/e0/c$a;->b(Z)Lcom/tencent/tme/live/e0/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tme/live/e0/c$a;->a()Lcom/tencent/tme/live/e0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tme/live/c/a;->d:Lcom/tencent/tme/live/e0/c;

    invoke-static {p1}, Lcom/tencent/tme/live/d/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p3, p0, Lcom/tencent/tme/live/c/a;->a:Landroid/net/Uri;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/c/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tme/live/d/g;->f()Lcom/tencent/tme/live/d/g;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    iput-object p2, p0, Lcom/tencent/tme/live/c/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/c/a;->j:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/tencent/tme/live/c/a;->k:I

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/tencent/tme/live/c/a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    instance-of v1, p0, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v1, p0, Lcom/tencent/tme/live/c/a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/tencent/tme/live/c/a;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/tme/live/e0/d;->d()Lcom/tencent/tme/live/c0/b;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/tme/live/c0/b;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public final a(IIBLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    iget v0, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget v1, p0, Lcom/tencent/tme/live/c/a;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, p5, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-nez p3, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    add-int/2addr p5, p2

    invoke-virtual {v1, p1, p2, p3, p5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 p5, 0x0

    invoke-virtual {v1, p5, p3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget p3, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget v3, p0, Lcom/tencent/tme/live/c/a;->k:I

    invoke-virtual {v1, p5, p5, p3, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_0
    if-eqz p4, :cond_1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p4, p1, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(ILjava/io/File;Lcom/tencent/tme/live/q2/i;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    iget-byte v0, p3, Lcom/tencent/tme/live/q2/i;->j:B

    .line 2
    iget v1, p3, Lcom/tencent/tme/live/q2/i;->f:I

    .line 3
    iget p3, p3, Lcom/tencent/tme/live/q2/i;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_3

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-le p1, v2, :cond_8

    sub-int/2addr p1, p3

    :goto_0
    if-ltz p1, :cond_8

    .line 4
    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/q2/i;

    .line 5
    iget-byte v1, v0, Lcom/tencent/tme/live/q2/i;->j:B

    .line 6
    iget v6, v0, Lcom/tencent/tme/live/q2/i;->f:I

    .line 7
    iget v0, v0, Lcom/tencent/tme/live/q2/i;->g:I

    .line 8
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/tencent/tme/live/c/a;->g:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/tencent/tme/live/d/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/tencent/tme/live/c/a;->d:Lcom/tencent/tme/live/e0/c;

    invoke-virtual {v8, v7, v9}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/e0/c;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v1, p3, :cond_2

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    if-ne v1, v2, :cond_8

    iget p2, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget p3, p0, Lcom/tencent/tme/live/c/a;->k:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v6, v0, p1, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v5, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget p1, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget v0, p0, Lcom/tencent/tme/live/c/a;->k:I

    invoke-virtual {p3, v5, v5, p1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_5

    move-object v3, v0

    goto :goto_4

    :cond_5
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tme/live/c/a;->g:Ljava/lang/String;

    sub-int/2addr p1, v2

    invoke-static {p2, p1}, Lcom/tencent/tme/live/d/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/tme/live/c/a;->d:Lcom/tencent/tme/live/e0/c;

    invoke-virtual {p2, p1, v2}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/e0/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget v2, p0, Lcom/tencent/tme/live/c/a;->k:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {v2, v1, p3, v0, p1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget p1, p0, Lcom/tencent/tme/live/c/a;->j:I

    iget p3, p0, Lcom/tencent/tme/live/c/a;->k:I

    invoke-virtual {v2, v5, v5, p1, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :goto_2
    move-object v3, p2

    goto :goto_4

    :cond_7
    if-lez p1, :cond_8

    sub-int/2addr p1, v2

    :goto_3
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_8
    :goto_4
    return-object v3
.end method

.method public final a(ILandroid/graphics/Bitmap;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tme/live/e0/d;->d()Lcom/tencent/tme/live/c0/b;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/d0/b;

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/tme/live/c/a;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tme/live/d0/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%s-%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/tencent/tme/live/c/a;->l:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    :goto_0
    iput v1, p0, Lcom/tencent/tme/live/c/a;->l:I

    :cond_1
    iget v0, p0, Lcom/tencent/tme/live/c/a;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gtz v0, :cond_4

    .line 1
    iget v0, p0, Lcom/tencent/tme/live/c/a;->q:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/tencent/tme/live/c/a;->j:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tme/live/c/a;->k:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iput v0, p0, Lcom/tencent/tme/live/c/a;->q:F

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/tencent/tme/live/c/a;->q:F

    iget v5, p0, Lcom/tencent/tme/live/c/a;->j:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    iget v6, p0, Lcom/tencent/tme/live/c/a;->k:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    invoke-direct {v0, v3, v3, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/tencent/tme/live/c/a;->c:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/tencent/tme/live/c/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/tme/live/c/a;->a(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 2
    :cond_4
    invoke-virtual {p0, v0}, Lcom/tencent/tme/live/c/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_8

    if-lez v0, :cond_5

    .line 3
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tme/live/q2/i;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/tencent/tme/live/c/a;->r:Ljava/io/File;

    invoke-virtual {p0, v0, v5, v4}, Lcom/tencent/tme/live/c/a;->a(ILjava/io/File;Lcom/tencent/tme/live/q2/i;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v9, v4

    goto :goto_3

    :cond_6
    move-object v9, v2

    :goto_3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tme/live/c/a;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/tme/live/c/a;->r:Ljava/io/File;

    invoke-static {v6, v0}, Lcom/tencent/tme/live/d/a;->a(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tme/live/c/a;->e:Lcom/tencent/tme/live/d/g;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tencent/tme/live/c/a;->d:Lcom/tencent/tme/live/e0/c;

    invoke-virtual {v5, v4, v6}, Lcom/tencent/tme/live/e0/d;->a(Ljava/lang/String;Lcom/tencent/tme/live/e0/c;)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_4
    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/q2/i;

    .line 4
    iget-byte v7, v1, Lcom/tencent/tme/live/q2/i;->k:B

    .line 5
    iget v5, v1, Lcom/tencent/tme/live/q2/i;->f:I

    .line 6
    iget v6, v1, Lcom/tencent/tme/live/q2/i;->g:I

    move-object v4, p0

    .line 7
    invoke-virtual/range {v4 .. v9}, Lcom/tencent/tme/live/c/a;->a(IIBLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v1

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v2

    .line 8
    :goto_6
    invoke-virtual {p0, v0, v4}, Lcom/tencent/tme/live/c/a;->a(ILandroid/graphics/Bitmap;)V

    :cond_8
    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/tencent/tme/live/c/a;->q:F

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v1, v1, v5

    iget v5, p0, Lcom/tencent/tme/live/c/a;->q:F

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/tencent/tme/live/c/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9
    :goto_7
    iget-boolean p1, p0, Lcom/tencent/tme/live/c/a;->p:Z

    if-nez p1, :cond_a

    iget p1, p0, Lcom/tencent/tme/live/c/a;->o:I

    if-lez p1, :cond_a

    iget v0, p0, Lcom/tencent/tme/live/c/a;->m:I

    if-lt v0, p1, :cond_a

    invoke-virtual {p0}, Lcom/tencent/tme/live/c/a;->stop()V

    :cond_a
    iget p1, p0, Lcom/tencent/tme/live/c/a;->o:I

    if-lez p1, :cond_b

    iget p1, p0, Lcom/tencent/tme/live/c/a;->l:I

    iget v0, p0, Lcom/tencent/tme/live/c/a;->n:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_b

    iget p1, p0, Lcom/tencent/tme/live/c/a;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/c/a;->m:I

    iget-object p1, p0, Lcom/tencent/tme/live/c/a;->s:Lcom/tencent/tme/live/d/e;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b
    iget p1, p0, Lcom/tencent/tme/live/c/a;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tme/live/c/a;->l:I

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    return v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/tencent/tme/live/c/a;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tme/live/c/a;->o:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/tencent/tme/live/c/a;->m:I

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tme/live/c/a;->stop()V

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/tme/live/c/a;->l:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/c/a;->l:I

    :cond_2
    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/tme/live/c/a;->l:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/q2/i;

    .line 1
    iget v1, v0, Lcom/tencent/tme/live/q2/i;->h:I

    .line 2
    iget v0, v0, Lcom/tencent/tme/live/q2/i;->i:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p0, p0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tme/live/c/a;->l:I

    iget-boolean v2, p0, Lcom/tencent/tme/live/c/a;->h:Z

    if-nez v2, :cond_a

    .line 3
    iget-object v2, p0, Lcom/tencent/tme/live/c/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tme/live/c/a;->g:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tme/live/c/a;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v2}, Lcom/tencent/tme/live/s2/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-nez v3, :cond_3

    goto :goto_5

    .line 6
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/tme/live/c/a;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lcom/tencent/tme/live/c/a;->r:Ljava/io/File;

    .line 7
    new-instance v3, Lcom/tencent/tme/live/d/a$a;

    invoke-direct {v3, v2}, Lcom/tencent/tme/live/d/a$a;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/tencent/tme/live/p2/q;->b()V

    .line 8
    iget-object v2, p0, Lcom/tencent/tme/live/c/a;->r:Ljava/io/File;

    if-eqz v2, :cond_9

    .line 9
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/tencent/tme/live/p2/r;

    invoke-direct {v3, v2}, Lcom/tencent/tme/live/p2/r;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/tencent/tme/live/p2/r;->b()V

    .line 10
    invoke-virtual {v3, v0}, Lcom/tencent/tme/live/p2/q;->a(Z)Lcom/tencent/tme/live/q2/d;

    move-result-object v2

    .line 11
    iget-object v2, v2, Lcom/tencent/tme/live/q2/d;->a:Ljava/util/List;

    .line 12
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tme/live/q2/e;

    instance-of v4, v3, Lcom/tencent/tme/live/q2/f;

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/tencent/tme/live/q2/f;

    .line 13
    iget v4, v4, Lcom/tencent/tme/live/q2/f;->d:I

    .line 14
    iput v4, p0, Lcom/tencent/tme/live/c/a;->n:I

    iget v4, p0, Lcom/tencent/tme/live/c/a;->o:I

    if-lez v4, :cond_6

    goto :goto_3

    :cond_6
    check-cast v3, Lcom/tencent/tme/live/q2/f;

    .line 15
    iget v3, v3, Lcom/tencent/tme/live/q2/f;->e:I

    .line 16
    iput v3, p0, Lcom/tencent/tme/live/c/a;->o:I

    goto :goto_3

    :cond_7
    instance-of v4, v3, Lcom/tencent/tme/live/q2/i;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/tencent/tme/live/c/a;->b:Ljava/util/ArrayList;

    check-cast v3, Lcom/tencent/tme/live/q2/i;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_9
    :goto_4
    iput-boolean v0, p0, Lcom/tencent/tme/live/c/a;->h:Z

    .line 18
    :cond_a
    :goto_5
    iget-boolean v0, p0, Lcom/tencent/tme/live/c/a;->h:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/tencent/tme/live/c/a;->run()V

    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->s:Lcom/tencent/tme/live/d/e;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/tencent/tme/live/s1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v0, v0, Lcom/tencent/tme/live/s1/a;->c:Lcom/tencent/tme/live/room/c;

    .line 20
    iget-object v1, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    if-nez v1, :cond_b

    goto :goto_6

    .line 21
    :cond_b
    iget-object v1, p0, Lcom/tencent/tme/live/c/a;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iget-object v0, v0, Lcom/tencent/tme/live/room/c;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    int-to-float v4, v5

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_6

    .line 23
    :cond_c
    invoke-virtual {p0}, Lcom/tencent/tme/live/c/a;->stop()V

    :cond_d
    :goto_6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/tme/live/c/a;->m:I

    invoke-virtual {p0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/tencent/tme/live/c/a;->i:Z

    iget-object v0, p0, Lcom/tencent/tme/live/c/a;->s:Lcom/tencent/tme/live/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
